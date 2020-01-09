(define (problem prob-matrix-visible)
(:domain mars-exploration)
(:objects visible-pos00 visible-pos01 visible-pos02
          visible-pos10 visible-pos11 visible-pos12
          visible-pos20 visible-pos21 visible-pos22
          soil-container rock-container 
          battery
          level-100 level-80 level-60 level-40 level-20 level-0 
          level-10 level-30 level-50 
          panel1 panel2 panel3 panel4
          x0 x1 x2 y0 y1 y2
          action
)
(:init 
    (loc x0)
    (loc x1)
    (loc x2)
    (loc y0)
    (loc y1)
    (loc y2)

    (inc-x x0 x1)
    (inc-x x1 x2)
    (dec-x x2 x1)
    (dec-x x1 x0)
    (same x0 x0)
    (same x1 x1)
    (same x2 x2)

    (inc-y y0 y1)
    (inc-y y1 y2)
    (dec-y y2 y1)
    (dec-y y1 y0)
    (same y0 y0)
    (same y1 y1)
    (same y2 y2)

    (at x0 y0)

    (connection x0 x0)
    (connection x0 x1)
    (connection x1 x2)
    (connection x2 x1)
    (connection x1 x0)
    (connection y0 y0)
    (connection y0 y1)
    (connection y1 y2)
    (connection y2 y1)
    (connection y1 y0)

    (unknown (soil-analysed x0 y1))
    (unknown (soil-analysed x0 y2))
    (unknown (soil-analysed x1 y0))
    (unknown (soil-analysed x1 y1))
    (unknown (soil-analysed x1 y2))
    (unknown (soil-analysed x2 y0))
    (unknown (soil-analysed x2 y1))
    (unknown (soil-analysed x2 y2))

    (unknown (visited x0 y1))
    (unknown (visited x0 y2))
    (unknown (visited x1 y0))
    (unknown (visited x1 y1))
    (unknown (visited x1 y2))
    (unknown (visited x2 y0))
    (unknown (visited x2 y1))
    (unknown (visited x2 y2))

    (visited x0 y0)

    (soil-container soil-container)
    (rock-container rock-container)
    (empty soil-container)
    (empty rock-container)

    ; (unknown (soil-analysed visible-pos01))
    ; (unknown (soil-analysed visible-pos02))
    ; (unknown (soil-analysed visible-pos10))
    ; (unknown (soil-analysed visible-pos11))
    ; (unknown (soil-analysed visible-pos12))
    ; (unknown (soil-analysed visible-pos20))
    ; (unknown (soil-analysed visible-pos21))
    ; (unknown (soil-analysed visible-pos22))

    ; (unknown (rock-analysed visible-pos01))
    ; (unknown (rock-analysed visible-pos02))
    ; (unknown (rock-analysed visible-pos10))
    ; (unknown (rock-analysed visible-pos11))
    ; (unknown (rock-analysed visible-pos12))
    ; (unknown (rock-analysed visible-pos20))
    ; (unknown (rock-analysed visible-pos21))
    ; (unknown (rock-analysed visible-pos22))


    ; (level level-100)
    ; (level level-80)
    ; (level level-60)
    ; (level level-40)
    ; (level level-20)
    ; (level level-0)

    ; (next level-0 level-20)
    ; (next level-20 level-40)
    ; (next level-40 level-60)
    ; (next level-60 level-80)
    ; (next level-80 level-100)
     
    ; (level level-100)
    ; (level level-90)
    ; (level level-80)
    ; (level level-70)
    ; (level level-60)
    (level level-50)
    (level level-40)
    (level level-30)
    (level level-20)
    (level level-10)
    (level level-0)

    (next level-0 level-10)
    (next level-10 level-20)
    (next level-20 level-30)
    (next level-30 level-40)
    (next level-40 level-50)

    (unknown (easy action))
    (unknown (medium action))
    (unknown (hard action))

    (oneof
        (easy action)
        (medium action)
        (hard action)
    )

    (action action)

    (next-easy level-50 level-40)
    (next-easy level-40 level-30)
    (next-easy level-30 level-20)
    (next-easy level-20 level-10)
    (next-easy level-10 level-0)

    (next-medium level-50 level-30)
    (next-medium level-40 level-20)
    (next-medium level-30 level-10)
    (next-medium level-20 level-0)
    (next-medium level-10 level-0)

    (next-hard level-50 level-20)
    (next-hard level-40 level-10)
    (next-hard level-30 level-0)
    (next-hard level-20 level-0)
    (next-hard level-10 level-0)

    (battery battery)
    (battery-level battery level-50)  ;change

    (next level-0 level-10)
    (next level-10 level-20)
    (next level-20 level-30)
    (next level-30 level-40)
    (next level-40 level-50)
    (next level-50 level-50)

    (critical level-30)
    (critical level-20)
    (critical level-10)
    (critical level-0)

    ; (unknown (max-light panel1))
    ; (unknown (max-light panel2))
    ; (unknown (max-light panel3))
    ; (unknown (max-light panel4))

    ; (oneof
    ;     (max-light panel1)
    ;     (max-light panel2)
    ;     (max-light panel3)
    ;     (max-light panel4)
    ; )
)
(:goal
    (and
        ; (visited visible-pos01)
        ; (visited visible-pos02)
        ; (visited visible-pos10)
        ; (visited visible-pos11)
        ; (visited visible-pos12)
        ; (visited visible-pos20)
        ; (visited visible-pos21)
        ; (visited visible-pos22)
        ; (soil-analysed visible-pos01)
        ; (rock-analysed visible-pos01)
        ; (soil-analysed visible-pos02)
        ; (soil-analysed visible-pos10)
        ; (soil-analysed visible-pos11)
        ; (rock-analysed visible-pos12)
        ; (rock-analysed visible-pos20)
        ; (rock-analysed visible-pos21)
        ; (rock-analysed visible-pos22)

        (soil-analysed x0 y1)
        (rock-analysed x0 y1)
        (soil-analysed x0 y2)
        (soil-analysed x1 y0)

        (visited x0 y1)
        ;(visited x2 y1)

        ;(visited x0 y2)
        ;(visited x1 y0)
    )
)
)
