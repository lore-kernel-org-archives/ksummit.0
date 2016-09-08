Return-Path: <vinod.koul@intel.com>
Date: Thu, 8 Sep 2016 14:25:53 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20160908085553.GE9355@localhost>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon>
	<20160906133429.5ktkvafprbtxr5sd@localhost>
	<CAOesGMjd0HrrVOZpumaSw8QvpkGqKsNPmEXWkTFz6rRLK7STag@mail.gmail.com>
	<CACRpkda=Atrahk6Jfrnj84C548bszkkB1ULnDDw7EowXabGB+A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkda=Atrahk6Jfrnj84C548bszkkB1ULnDDw7EowXabGB+A@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
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

On Thu, Sep 08, 2016 at 10:34:48AM +0200, Linus Walleij wrote:
> On Tue, Sep 6, 2016 at 6:46 PM, Olof Johansson <olof@lixom.net> wrote:
> 
> > Chrome OS was successful in this (if I might say so myself), getting
> > several vendors who earlier had very thin upstream presence to
> > significantly improve. I haven't seen all that many other projects
> > being able to do it, but for those of you who are in positions to help
> > steer SoC choices, do keep this in mind, work with your internal
> > development teams to make them understand the importance of this, and
> > make it a priority.
> 
> Actually what you did with SoC vendors from Chrome OS and stating
> clearly that upstream presence is a factor in procurement was the
> *only* thing I have ever seen that actually works to change the
> behaviour of an entire company, apart from dedicated individuals on
> the inside of the companies.
> 
> It got one major SoC vendor "hooked" on upstreaming to the point
> that they have now come around to internalize that way of working,
> at least partly.
> 
> So Chrome OS SoC procurement did good. You should be proud.
> 
> When it comes to Android, as I think I remarked in the past, the
> problem since its inception is that the Android people making Nexus
> devices (or whatever they will call it now) have traditionally thought of
> themselves as inferior by being tied to someone actually doing
> the hardware such as HTC, Samsung, LG etc, and they see it
> as those companies are doing the actual procurement of
> components and SoC, where BSP software is just another
> "component".
> 
> The day the Android people say that for a Nexus(-ish) device it's
> gonna be all upstream kernel and they will pick the SoC that
> delivers that, then things will happen. But as it seems, they are
> not doing the SoC pick, it is done by someone else. But I guess
> they *do* pick which company will make the Nexus-ish device and
> they could communicate this along to them.
> 
> They can also say "upstream strategy document or no playstore
> for you" to all handset and tablet vendors any day, but I guess it
> would be percieved as too aggressive. But I would personally have
> used that hammer immediately.

And I think things might be better in future. Brillo (though Android)
seems to have ChromeOS kind of upstream strategy in place, though it is
not clear to me yet if that is mandatory.

Personally although we wanted to upstream, we never got support and time
for upstream when we were on Android only. ChromeOS helped us to get a
biz requirement and support for upstreaming activities.

[1]:
https://android.googlesource.com/device/generic/brillo/+/master/docs/KernelDevelopmentGuide.md


-- 
~Vinod
