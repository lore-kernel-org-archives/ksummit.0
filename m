Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7954C26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 23:53:41 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 3560D1FAA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 23:53:39 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 22 May 2014 02:10:35 +0200
Message-ID: <1942613.WoDDysVVIR@vostro.rjw.lan>
In-Reply-To: <CAPcyv4hJvjY94-agCi8Twz-Np8_vxv3G7+eFSaAPjVOVyQ0gOQ@mail.gmail.com>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<2980546.hqgiQV7seV@vostro.rjw.lan>
	<CAPcyv4hJvjY94-agCi8Twz-Np8_vxv3G7+eFSaAPjVOVyQ0gOQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
	Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday, May 21, 2014 04:03:49 PM Dan Williams wrote:
> On Wed, May 21, 2014 at 4:06 PM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> > On Wednesday, May 21, 2014 08:35:55 AM Dan Williams wrote:
> >> On Wed, May 21, 2014 at 3:11 AM, NeilBrown <neilb@suse.de> wrote:
> >> > On Wed, 21 May 2014 01:36:55 -0700 Dan Williams <dan.j.williams@intel.com>
> >> > wrote:

[cut]

> >
> > There's more to that.
> >
> > The model you're referring to is only possible if all participants are
> > employees of one company or otherwise members of one organization that
> > has some kind of control over them.  The kernel development is not done
> > like that, though, so I'm afraid that the Facebook experience is not
> > applicable here directly.
> >
> > For example, we take patches from pretty much everyone on the Internet.
> > Does Facebook do that too?  I don't think so.
> >
> 
> I'm struggling to see how this addresses my new libsas feature example?

What about security?  What about preventing distros from shipping code that
won't be accepted eventually?

> Simply, if an end user knows how to override a "gatekeeper" that user
> can test features that we are otherwise still debating upstream.  They
> can of course also apply the patches directly, but I am proposing we
> formalize a mechanism to encourage more experimentation in-tree.

So is staging not sufficient any more?

> I'm fully aware we do not have the tactical data nor operational
> control to run the kernel like a website, that's not my concern.  My
> concern is with expanding a maintainer's options for mitigating risk.

What risk exactly do you mean?

Rafael
