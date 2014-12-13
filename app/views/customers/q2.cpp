#include <iostream>
#include <cstdio>
#include <algorithm>
using namespace std;
#define ll long long
int main(){
	#ifndef ONLINE_JUDGE
		freopen("in","r",stdin);
	#endif
	long long n; cin>>n; 
	ll a,m; cin>>a; n--;
	while(n--){
		cin>>m; a=a^m;
	}
	if(a)cout<<"Batman";
	else cout<<"Superman";
	return 0;
}