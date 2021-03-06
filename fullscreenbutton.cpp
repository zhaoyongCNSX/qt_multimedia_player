#include "fullscreenbutton.h"
#include <QPainter>
#include <QColor>
#include <QMouseEvent>
#include <QtCore>

FullScreenButton::FullScreenButton(QWidget *parent) : QPushButton(parent) {
    setFixedSize(30, 30);
    insideButton = false;
}

void FullScreenButton::paintEvent(QPaintEvent *) {
    QPainter painter(this);
    painter.setRenderHint(QPainter::Antialiasing);
    painter.translate(QPointF(width() / 2, height() / 2));

    QRadialGradient radialGradient(QPointF(0, 0), 60);
    radialGradient.setColorAt(0, QColor(55,121,251));
    radialGradient.setColorAt(1, QColor(189,224,254));

    QPen pen(QColor(200, 200, 200));
    pen.setWidth(2);
    painter.setPen(pen);
    painter.setBrush(radialGradient);

    painter.drawEllipse(QRectF(-10, -10, 20, 20));

    painter.restore();

    pen.setWidth(3);
    painter.setPen(pen);

    painter.drawRect(QRect(-5, -5, 10, 10));
}

void FullScreenButton::mousePressEvent(QMouseEvent *e) {
    if (qSqrt(qPow(e->x() - 15, 2) + qPow(e->y() - 15, 2)) < 10) {
        insideButton = true;
    }
}

void FullScreenButton::mouseReleaseEvent(QMouseEvent *e) {
    if (insideButton && (qSqrt(qPow(e->x() - 15, 2) + qPow(e->y() - 15, 2)) < 10)) {
        emit(clicked(true));
        update();
    }
    insideButton = false;
}
