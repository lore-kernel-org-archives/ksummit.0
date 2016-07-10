Return-Path: <rjw@rjwysocki.net>
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Jiri Kosina <jikos@kernel.org>
Date: Sun, 10 Jul 2016 03:22:31 +0200
Message-ID: <5583607.iQ3THHzu8f@vostro.rjw.lan>
In-Reply-To: <alpine.LNX.2.00.1607091028050.24757@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<3908561D78D1C84285E8C5FCA982C28F3A15659B@ORSMSX114.amr.corp.intel.com>
	<alpine.LNX.2.00.1607091028050.24757@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: "ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>,
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

On Saturday, July 09, 2016 10:34:35 AM Jiri Kosina wrote:
> On Fri, 8 Jul 2016, Luck, Tony wrote:
> 
> > > In addition to that, I'd again (like during the past 5+ years, but it
> > > never really happened) like to propose a stable tree discussion topic: I'd
> > > like to see an attempt to make the stable workflow more oriented towards
> > > "maintainers sending pull requests" rather than "random people pointing to
> > > patches that should go to stable". This has been much of an issue in the
> > 
> > Shouldn't the common case be "Maintainer sends list of commit IDs to
> > be cherry-picked" rather than a pull request?
> 
> Yeah, explicitly using term "pull request" was probably way too specific. 
> 
> The model I'd really love to see is "a person/group of people 
> (maintainers) are identified and appointed responsible for what end up in 
> -stable for particular subsystem", i.e. the same model we use for mainline 
> development.
> 
> Whether it's actual git pull request, list of commit IDs, etc. is really 
> just a technicality.
> 
> Basically: currently the model is that everybody is free to pick up a 
> random commit and bounce it to -stable. What I'd like see is that this is 
> routed through the maintainers instead, who then push thing upstream 
> (where upstream means stable).
> 
> I know that there are exceptions where this is working properly (netdev), 
> I personally am doing that also informally (when people tell me "hey, this 
> should go to stable", I do whatever is necessary), but still the general 
> process as such is not there.
> 
> The usual counter-argument I've always received from the stable team to 
> that was "Maintainers are busy enough already, if we start enforcing this, 
> we'd have much less patches in -stable". I personally don't see that as a 
> bad thing. "Less is more" might apply here. If someone is really unhappy 
> about state of particular subsystem in -stable, it'd mean that group of 
> maintainers will have to be extended for that particular subsystem.

You still need to demonstrate that the "random people" bouncing commits off
of -stable introduce more regressions in it than maintainers adding the
"Cc: stable" tag to their commits.

If more regressions are introduced by the latter, I'm afraid that the whole
reasoning falls apart.

Thanks,
Rafael
