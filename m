Return-Path: <rjw@rjwysocki.net>
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Guenter Roeck <linux@roeck-us.net>, Jiri Kosina <jikos@kernel.org>
Date: Sat, 09 Jul 2016 01:52:19 +0200
Message-ID: <2544945.WExZRG40u7@vostro.rjw.lan>
In-Reply-To: <5780334E.8020801@roeck-us.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: ksummit-discuss@lists.linux-foundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, July 08, 2016 04:12:14 PM Guenter Roeck wrote:
> On 07/08/2016 03:35 PM, Jiri Kosina wrote:
> > Yeah, this topic again. It'd be a sad year on ksummit-discuss@ without it,
> > wouldn't it? :)
> >
> > As a SUSE Enterprise Linux kernel maintainer, stable kernel is one of the
> > crucial elements I rely on (and I also try to make sure that SUSE
> > contributes back as much as possible).
> >
> > Hence any planned changes in the workflow / releases are rather essential
> > for me, and I'd like to participate, should any such discussion take
> > place.
> >
> 
> Same here. New employer, lots of unhappiness with stable releases, to the point
> where stable trees are not used as basis for shipping releases.
> That kind of defeats the purpose. So, instead of "let's ignore stable",
> maybe we can get to a point where people feel comfortable with the quality
> of stable releases, and where stable can actually be used as basis for production
> releases.
> 
> > In addition to that, I'd again (like during the past 5+ years, but it
> > never really happened) like to propose a stable tree discussion topic: I'd
> > like to see an attempt to make the stable workflow more oriented towards
> > "maintainers sending pull requests" rather than "random people pointing to
> > patches that should go to stable". This has been much of an issue in the
> 
> Sounds like an excellent idea.

I'm wondering if anyone can tell what fraction of stable regressions come
from commits marked with the "Cc: stable" tag by the maintainers in the first
place.

If that fraction is significant, then I'm afraid it won't help to ask
maintainers to send pull requests to stable and it will affect their
bandwidth (sort of limited already).

To me, the source of the problem is that sometimes it really is hard to see
the "regression potential" upfront, so to speak, and when the commit gets into
stable, it's already too late.

And honestly, the "we don't revert things from stable if the mainline hasn't
reverted them yet" policy doesn't really help, because the mainline may choose
to fix the problem instead of reverting and that may take time and while the
mainline fix is happily being worked on, the users of stable are sort of left
in the cold with code that doesn't work.  And it may go like that for weeks
in extreme cases.

Thanks,
Rafael
