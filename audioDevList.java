import java.io.*;
import javax.sound.sampled.*;

public class audioDevList{
public static void main(String args[]){

//Get and display a list of
// available mixers.

Mixer.Info[] mixerInfo =
AudioSystem.getMixerInfo();
System.out.println("Available mixers:");
for(int cnt = 0; cnt < mixerInfo.length;
cnt++){
System.out.println(mixerInfo[cnt].
getName());
}//end for loop
}
}

