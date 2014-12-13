#include <iostream>
#include <cstdio>
#include <algorithm>
using namespace std;

int main(){
	#ifndef ONLINE_JUDGE
		freopen("in","r",stdin);
	#endif
	long long t; cin>>t; while(t--){
		long long x, y,n,m=0; cin>>x>>y>>n; x-=y;
		long long a[n+2];
		for(long long i=0;i<n;i++){
			cin>>a[i];
		}
		sort(a,a+n);
		for(long long i=n;i>=0&&x;){
			if(a[i]<=x){
				m++;x-=a[i];
				//cout<<a[i]<<" ";
			}else i--;
		}
		if(x)m=-1;
		cout<<m<<endl;

	}
	return 0;
}