
var overlap_dist = 5;
if (x < other.x) {
    x -= overlap_dist;
    other.x += overlap_dist;
} else {
    x += overlap_dist;
    other.x -= overlap_dist;
}
