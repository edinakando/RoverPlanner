(define (problem prob-matrix-visible)
(:domain mars-exploration)
(:objects visible-pos00 visible-pos01 visible-pos02
          visible-pos10 visible-pos11 visible-pos12
          visible-pos20 visible-pos21 visible-pos22
          soil-container rock-container 
          battery
          level-100 level-80 level-60 level-40 level-20 level-0 
)
(:init 
    (visible-pos visible-pos00)
    (visible-pos visible-pos01)
    (visible-pos visible-pos02)
    (visible-pos visible-pos10)
    (visible-pos visible-pos11)
    (visible-pos visible-pos12)
    (visible-pos visible-pos20)
    (visible-pos visible-pos21)
    (visible-pos visible-pos22)

    (connection visible-pos00 visible-pos01)
    (connection visible-pos00 visible-pos10)

    (connection visible-pos01 visible-pos00)
    (connection visible-pos01 visible-pos02)
    (connection visible-pos01 visible-pos11)

    (connection visible-pos02 visible-pos01)
    (connection visible-pos02 visible-pos12)

    (connection visible-pos10 visible-pos00)
    (connection visible-pos10 visible-pos11)
    (connection visible-pos10 visible-pos20)

    (connection visible-pos11 visible-pos01)
    (connection visible-pos11 visible-pos10)
    (connection visible-pos11 visible-pos12)
    (connection visible-pos11 visible-pos21)

    (connection visible-pos12 visible-pos02)
    (connection visible-pos12 visible-pos11)
    (connection visible-pos12 visible-pos22)

    (connection visible-pos20 visible-pos10)
    (connection visible-pos20 visible-pos21)

    (connection visible-pos21 visible-pos11)
    (connection visible-pos21 visible-pos20)
    (connection visible-pos21 visible-pos22)

    (connection visible-pos22 visible-pos12)
    (connection visible-pos22 visible-pos12)

    (at visible-pos00)
    (visited visible-pos00)

    (unknown (visited visible-pos01))
    (unknown (visited visible-pos02))
    (unknown (visited visible-pos10))
    (unknown (visited visible-pos11))
    (unknown (visited visible-pos12))
    (unknown (visited visible-pos20))
    (unknown (visited visible-pos21))
    (unknown (visited visible-pos22))

    (soil-container soil-container)
    (rock-container rock-container)
    (empty soil-container)
    (empty rock-container)

    (unknown (soil-analysed visible-pos01))
    (unknown (soil-analysed visible-pos02))
    (unknown (soil-analysed visible-pos10))
    (unknown (soil-analysed visible-pos11))
    (unknown (soil-analysed visible-pos12))
    (unknown (soil-analysed visible-pos20))
    (unknown (soil-analysed visible-pos21))
    (unknown (soil-analysed visible-pos22))

    (unknown (rock-analysed visible-pos01))
    (unknown (rock-analysed visible-pos02))
    (unknown (rock-analysed visible-pos10))
    (unknown (rock-analysed visible-pos11))
    (unknown (rock-analysed visible-pos12))
    (unknown (rock-analysed visible-pos20))
    (unknown (rock-analysed visible-pos21))
    (unknown (rock-analysed visible-pos22))


    (level level-100)
    (level level-80)
    (level level-60)
    (level level-40)
    (level level-20)
    (level level-0)

    (next level-0 level-20)
    (next level-20 level-40)
    (next level-40 level-60)
    (next level-60 level-80)
    (next level-80 level-100)

    (battery battery)
    (battery-level battery level-100)
    
    (critical level-60)
    (critical level-40)
    (critical level-20)
    (critical level-0)
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
        (soil-analysed visible-pos01)
        (rock-analysed visible-pos01)
        (soil-analysed visible-pos02)
        (soil-analysed visible-pos10)
        ; (soil-analysed visible-pos11)
        ; (rock-analysed visible-pos12)
        ; (rock-analysed visible-pos20)
        ; (rock-analysed visible-pos21)
        ; (rock-analysed visible-pos22)
    )
)
)