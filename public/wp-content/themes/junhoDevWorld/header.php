<!DOCTYPE html>
<html <?php language_attributes(); ?> data-theme="dark">

<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

    <header class="header" role="banner">
        <div class="header__inner container">
            <!-- Profile image with a name -->
            <a class="header__brand" href="/">
                <img class="header__avatar" src="" alt="">
                <span class="header__info">
                    <span>Junho Shin</span>
                    <span class="header__verification"><i class="fa-solid fa-check"></i></span>
                </span>
            </a>

            <div class="header__nav">
                <!-- nav--open -> open the navigation tab in small screen size-->
                <nav class="nav">
                    <!-- hamburger menu (visible only in a small screen) -->
                    <button class="iconbtn nav__togglebtn">
                        <span class="menuicon">
                            <span class="menuicon__bar"></span>
                            <span class="menuicon__bar"></span>
                            <span class="menuicon__bar"></span>
                            <span class="menuicon__bar"></span>
                        </span>
                    </button>

                    <!-- 01 Home, 02 writing ... -->
                    <div class="nav__content">
                        <ul class="nav__menu" id="nav__menu">
                            <li class="nav__item"><a class="nav__link" href=""><span class="nav__num">01</span> home</a>
                            </li>
                            <li class="nav__item nav__item--active"><a class="nav__link" href=""><span class="nav__num">02</span>
                                    writing</a></li>
                            <li class="nav__item"><a class="nav__link" href=""><span class="nav__num">03</span>
                                    notes</a></li>
                            <li class="nav__item"><a class="nav__link" href=""><span class="nav__num">04</span>
                                    about</a></li>
                            <li class="nav__item"><a class="nav__link" href=""><span class="nav__num">05</span> bible
                                    notes</a></li>
                        </ul>
                    </div>

                    <!-- tag for Circle expansion animation -->
                    <div class="nav__bg">
                        <div class="nav__bg__circle"></div>
                    </div>
                </nav>
            </div>

        </div>
    </header>