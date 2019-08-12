package ${moduleName};


import dagger.Module;
import dagger.Provides;

/**
 * @author madreain
 * @date 
 * module：
 * description：
 */
@Module
public class ${activityClass}Module {

    @Provides
    ${activityClass}Contract.View getView(${activityClass}Activity view) {
        return view;
    }

}
