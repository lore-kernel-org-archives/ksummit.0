Return-Path: <gregkh@linuxfoundation.org>
Date: Thu, 20 Apr 2017 15:03:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20170420130347.GA6445@kroah.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<d0173f9f-d68a-995a-af42-a388af93dcca@redhat.com>
	<CA+55aFyZ-EuGo67DXQegC2K+BqsHxdaFeVSnJgRGnjLOf1FZaw@mail.gmail.com>
	<87wpafsdbl.fsf@intel.com> <20170420105933.GA26134@kroah.com>
	<87fuh3s1z1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87fuh3s1z1.fsf@intel.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>, David Miller <davem@davemloft.net>,
	Doug Ledford <dledford@redhat.com>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Apr 20, 2017 at 03:22:26PM +0300, Jani Nikula wrote:
> On Thu, 20 Apr 2017, Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
> > On Thu, Apr 20, 2017 at 11:17:18AM +0300, Jani Nikula wrote:
> >> On Wed, 19 Apr 2017, Linus Torvalds <torvalds@linux-foundation.org> wrote:
> >> > Yeah, I don't think we can do much about distros that intentionally
> >> > want to stay behind and backport.
> >> 
> >> /me looks at https://www.kernel.org/
> >> 
> >> 1 stable, 8 longterm, and 1 eol'd longterm kernels. The oldest longterm
> >> is based on a five years old release.
> >
> > That 5 year old kernel is due to Debian's looney release schedule, go
> > take it up with them :)
> >
> >> I just think the multitude of longterm kernels are sending a message
> >> that it's perfectly fine to stay behind. Don't get me wrong, I know why
> >> they are there, but I still think in the past the focus on encouraging
> >> to always use the latest stable kernel was stronger.
> >
> > And how do you suggest that we do that any more than we currently do?
> > (i.e. I go around and talk to companies all the time about this issue,
> > did a tour of Asia last month, and will be talking to some US-based
> > companies next month.)
> >
> > As you say, you know why they are there, so why is that not a valid
> > reason in itself?  :)
> 
> Well, I'm just saying it's a double edged sword. Accommodating the
> longterms says it's okay to rely on them, but then you go around the
> world telling people they shouldn't do that anyway. It's a tradeoff.
> 
> Or maybe you just like traveling? ;)

No, I don't like traveling :)

And I tell people to rely on these kernels instead of trying to do it on
their own, as they always get it wrong when they do not use a longterm
kernel (they were going to only stick with one kernel release anyway).

I tell people to pick the latest LTS for their product, and use that,
and update constantly.  Even better, if their SoC vendor doesn't add 2-3
million lines of code to their kernel, use the latest kernel.org release
from Linus.  But SoC vendors who don't do that are very few these days,
so lots of my work is to try to cut that huge diff down.

But getting rid of that diff is going to take a long time, or major
customer disatisfaction/change, which I'm also trying to force.
Otherwise the SoC vendor doesn't really care (as is evident by the 3
million line diff...)

> > And you will note (although everyone seems to ignore it), that we are
> > now only adding 1 new LTS kernel a year, and have been for the past few
> > years, in order to cut down on the proliferation we had 3-4 years back.
> 
> I think that's a step in the right direction. How about having a shorter
> lifetime too, despite "longterm"? Of course that would conflict with
> what the distros are doing, and this may not be a popular view, but I'm
> wondering if it's overall a net positive to give an appearance of
> kernel.org endorsing all these ancient kernels?

Why is longer lifetimes bad?  If the developer wants to do the work,
that's fine.  For lots of users, they have to stay at a specific kernel
release due to (again) their horrid SoC vendor.  Heck, I've even offered
to forward port some SoC trees to newer kernels, and had the SoC vendor
turn me down because they don't want anyone to get the idea that it
would even be possible to do!

So some users are stuck at these older kernels, supporting them with a
stream of good bugfixes is essential to ensure that their devices are
secure and work well over time.  That's a valuable thing for them and a
good reason for them to use Linux.

It's not a black/white issue here, as you well know, it's a large
ecosystem full of different groups pulling different ways.  I'll always
push for people to use newer kernels, and age-out older ones, and the
new hardware treadmill supports that quite well.  Combined with
educating and helping companies merge stuff upstream, it can get better,
and is.  Look at how bad it used to be just 3 years ago :)

thanks,

greg k-h
