/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.jflexcup;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import umg.compiladores.Lexer;
import umg.compiladores.parser;

/**
 *
 * @author Enzo Monroy
 */
public class JflexCup {

    public static void main(String[] args) throws FileNotFoundException, Exception {
        
        //"C:\\Users\\Enzo Monroy\\Desktop"
        
       // Reader r;
        
       Reader r = new FileReader("C:\\Users\\Enzo Monroy\\Desktop\\pro.txt");
       Lexer lex = new Lexer(r); 
       parser p= new parser(lex); 
        
        p.parse( );
        //System.out.println("Hello World!");
    }
}
