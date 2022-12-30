#!/usr/bin/perl 

# Astrological Sign Reader
# Alyssa St Don
# Will give you a short summary of your sun, moon and rising sign based on your zodiac.
# How to use 

use warnings;
use strict;


# Program Introduction
print "~~~~~~~~ Welcome to Alyssa's Astrological Signs Program! ~~~~~~~~\n\n";
print "Did you know there are three types of astrological signs that define your personality?\n";
print "They are your Sun Sign, Moon Sign, and Rising Sign!\n\n";
print "Your sign sun is your core identity - the basis of who you are.\n\n";
print "Your moon sign is said to represent your inner self - your subconcious self.\n\n";
print "Your rising sign is your external self - the mask that gets put on when people meet you.\n\n";

ProgramStart();


# First Input: What sign do you want to learn about?

sub ProgramStart{

    print "Which of these signs would you like to learn about today?\n\nEnter 1 for Sun Sign, Enter 2 for Moon Sign, Enter 3 for Rising Sign.\n";

    while(my $line = <STDIN>){

        if ($line == 1){

            SunSign();
            exit;

        } elsif ($line == 2){

            MoonSign();
            exit;

        } elsif ($line == 3){

            RisingSign();
            exit;

        } else {

            print "Incorrect value inputted. Please type either 1, 2, or 3.\n";
                
        } 
    }
} 




# Sun Sign subroutine

sub SunSign {

    print "You want to know more about your Sun Sign!\n";
    print "Your sun sign is your core identity and probably the sign that you are most familiar with as it is your zodiac!\n\n";

    print "What is your Sun Sign?\n";
    
    my $sun = <STDIN>;
    chomp $sun;

    open (my $fh, '<', 'sunsigns.txt') or die "I couldn't reach the file. Please try again.";

    while (<$fh>) {
        
        if (/$sun/) {

            print "\n";
            print;
        }
    }

    Restart();
}


# Moon sign subroutine

sub MoonSign {

    print "You want to know more about your Moon Sign!\n\n";
    print "Your moon sign represents your inner self. It tells how you deal with emotions and how you relate to others and their emotions.\n\n";

    print "What is your Moon sign?\n";

    my $moon = <STDIN>;
    chomp $moon;

    open (my $fh, '<', 'moonsigns.txt') or die "I couldn't reach the file. Please try again.";

    while (<$fh>) {
        
        if (/$moon/) {

            print "\n";
            print;
        }
    }

    Restart();

}


#Rising Sign subroutine

sub RisingSign {

    print "You want to know more about your Rising Sign!\n\n";
    print "Your Rising Sign, also known as an Antecdent, is the social mask you put on when you're with other peopole.\n\n";

    print "What is your Rising Sign?\n";

    my $rising = <STDIN>;
    chomp $rising;

    open (my $fh, '<', 'risingsigns.txt') or die "I couldn't reach the file. Please try again.";

    while (<$fh>) {
        
        if (/$rising/) {

            print "\n";
            print;
        }
    }

    Restart();

}


# Sub to restart the program

sub Restart {

    print "\n\nWould you like to go back to the beginning to learn about another sign?\nPlease type 1 to continue, or type any number to exit.\n";
    my $line = <STDIN>;
    chomp $line;

    if ($line == 1){

        ProgramStart();

    } else {

        exit;
    }
}