Return-Path: <tytso@thunk.org>
Date: Fri, 2 Sep 2016 09:47:11 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Alex Shi <alex.shi@linaro.org>
Message-ID: <20160902134711.movdpffcdcsx6kzv@thunk.org>
References: <57C78BE9.30009@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <57C78BE9.30009@linaro.org>
Cc: ltsi-dev@lists.linuxfoundation.org,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org, Mark Brown <broonie@linaro.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 01, 2016 at 10:01:13AM +0800, Alex Shi wrote:
> 
> I am a Linaro stable kernel maintainer. Our stable kernel is base on LTS
> plus much of upstream features backporting on them. Here is the detailed
> info of LSK: https://wiki.linaro.org/LSK
> https://git.linaro.org/?p=kernel/linux-linaro-stable.git

I'm really not sure what problem you are trying to solve here.

As near as I can tell, the kernels provided by a SOC vendor are a
snapshot in time of some LTS kernel, and after that, they don't bother
merging any bug fixes or security fixes from the upstream kernel.
They might take individual patches if they notice there's a problem
(e.g., it gets written about in the national press), but otherwise,
they'll be stuck on some nonsense such as 3.10.23.

Then the product vendors take the SOC kernel, and further hack it up,
and then once they take a snapshot, as far as I can tell, they don't
take any rolling updates from the SOC vendor either.  I'm not sure how
much of this is due to lack of engineering bandwidth, and how much of
this is due to being worried that a newer SOC kernel will introduce
regressions, but either way, they'll lock onto an old SOC kernel, and
apparently only take bug fixes when they notice there is a problem.
(And in multiple cases I've gotten calls from help of SOC vendors
asking for assistance in figuring out a problem, and more often than
not, the fix is in the latest LTS kernel, but that doesn't help them.)
And of course, in some cases, "never", unless it's written about in
the aforementioned national press, and even then, I'm not convinced
the product vendors will have the engineering staff to turn out
firmware upgrades for an older product.

So what's the point of moving features into some ancient kernel?
Who's going to take it?  Certainly not the product vendors, who
consume the SOC kernel.  The SOC vendors?  Why not just encourage them
to get their device drivers into staging, and just go to a newer LTS
kernel?  Because I guarantee that's going to be less risky than taking
a random collection of features, and backporting them into some
ancient kernel.

Or for that matter, why not simply going to the latest mainline
kernel.  Since the SOC vendors aren't taking updates from the LTS
kernel anyway, if the LTS kernel exists only as a patch repository
where people can look for security fixes and bug fixes (sometimes
after the upstream maintainer has to point out it's in the LTS
kernel), if they take, say, 4.7, in the future they might need to take
a look at 4.8.x, 4.9.x, etc., until the next LTS kernel is declared.
So that means that an SOC vendor or a downstream product vendors might
have to look at 3 or 4 patch releases instead of one.  Is that really
that hard?

     	  		 	    	  - Ted
