Return-Path: <SRS0=63qv=HW=linuxfoundation.org=gregkh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 801007F6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 12:08:10 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 385BC625
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 12:08:10 +0000 (UTC)
Date: Thu, 3 May 2018 05:03:29 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20180503120329.GA7025@kroah.com>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 02, 2018 at 08:52:29PM -0700, Guenter Roeck wrote:
> On 05/02/2018 08:10 PM, Theodore Y. Ts'o wrote:
> > On Thu, May 03, 2018 at 11:05:50AM +0900, Mark Brown wrote:
> > > On Wed, May 02, 2018 at 07:46:34PM +0000, Sasha Levin wrote:
> > > 
> > > > As you said, the regression should be fixed "asap", not "immediately".
> > > > It should go through some sort of review and testing the maintainers are
> > > > happy with, but unfourtenately it doesn't happen now.
> > > 
> > > Doesn't happen some of the time.  It's not like this is a universal
> > > problem.
> > > 
> > > Especially for driver specific things there's at times no realistic
> > > prospect of getting useful independent review of fixes, the hardware
> > > isn't always widely available and if the fix isn't a pure software thing
> > > at some point you just have to trust the judgement of the vendor.
> > 
> > And sometimes the Demon Murphy will cause a regression fix for user A,
> > to cause breakage for slightly different hardware belonging to user B.  :-(
> > 
> 
> Believe me, I get my share of those. 7dac4a1726a9 ("ext4: add validity checks
> for bitmap block numbers") and its fix 22be37acce25 (" ext4: fix bitmap
> position validation") are pretty good examples. Yet, at the same time I had
> to deal with three additional CVEs in the ext4 code. Even though the initial
> fix for one of the four was buggy, I am glad that I got the other three through
> stable releases.
> 
> As for -next, me and others stopped reporting bugs in it, because when we do
> we tend to get flamed for the "noise". Is anyone aware (or cares) that mips
> and nds32 images don't build ? Soaking clothes in an empty bathtub won't make
> them wet, and bugs in code which no one builds, much less tests or uses, won't
> be found.
> 
> I can only repeat - what we need is more sophisticated testing, not a more
> restrictive process.

I agree, and people are working on this.  But we can always use more!

thanks,

greg k-h
