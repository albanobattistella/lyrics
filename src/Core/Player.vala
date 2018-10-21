
public interface Lyrics.Player : Object {
    public abstract int64 position { get; }
    public abstract Metasong current_song { get;set; }
    public abstract State state { get; set; }
    public abstract string busname { get; set; }

    public abstract void toggle ();

    public enum State {
        UNKNOWN,
        STOPPED,
        PLAYING,
        PAUSED;

        public string to_string () {
            switch (this) {
                case UNKNOWN:
                    return "UNKNOWN";
                case STOPPED:
                    return "STOPPED";
                case PAUSED:
                    return "PAUSED";
                case PLAYING:
                    return "PLAYING";
                default:
                    assert_not_reached();
            }
        }
    }
}
