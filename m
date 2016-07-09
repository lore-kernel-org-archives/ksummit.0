Return-Path: <jason@lakedaemon.net>
Date: Sat, 9 Jul 2016 15:19:34 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <20160709151934.GD8989@io.lakedaemon.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net>
	<3908561D78D1C84285E8C5FCA982C28F3A15659B@ORSMSX114.amr.corp.intel.com>
	<alpine.LNX.2.00.1607091028050.24757@cbobk.fhfr.pm>
	<1468056541.4837.34.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1468056541.4837.34.camel@sipsolutions.net>
Cc: "ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Johannes,

On Sat, Jul 09, 2016 at 11:29:01AM +0200, Johannes Berg wrote:
> On Sat, 2016-07-09 at 10:34 +0200, Jiri Kosina wrote:
> > 
> > Basically: currently the model is that everybody is free to pick up
> > a  random commit and bounce it to -stable. What I'd like see is that
> > this is  routed through the maintainers instead, who then push thing
> > upstream (where upstream means stable).
> > 
> > I know that there are exceptions where this is working properly
> > (netdev), 
> 
> Note that for subsets of the networking tree, particularly wireless, we
> *do* add Cc: stable tags, but usually that's me adding the tag.

Same here.  Usually, the best we get from a patch submitter is the commit
introducing the bug.  Some extra work is already built into our workflow
for anything destined for -stable.

> > The usual counter-argument I've always received from the stable team
> > to that was "Maintainers are busy enough already, if we start
> > enforcing this, we'd have much less patches in -stable". I personally
> > don't see that as a bad thing. "Less is more" might apply here. If
> > someone is really unhappy about state of particular subsystem in
> > -stable, it'd mean that group of maintainers will have to be extended
> > for that particular subsystem.
> 
> I'm not convinced by that line of reasoning, especially since in my
> experience the unhappy people are often the least qualified to actually
> determine the impact of a patch.

Ack.

> Perhaps a hybrid model, close to what we have today, would work? If a
> patch is proposed for stable, instead of including it by default, ask
> the maintainer(s) to separately acknowledge the patch for stable? IOW,
> rather than sending a patchbomb that requires an explicit NACK (with
> the previously discussed signal/noise problem), just send a list of
> commits and ask maintainers to edit it? They could remove and add
> commits then.

I dunno.  I agree we need to increase feedback, but I think relying on
active dialog wouldn't last.  Posting a branch based on the oldest
relevant version, and getting automated/semi-automated feedback on it
*before* it's accepted into -stable would be a huge help.

But that's assuming I'm reading the nature of the regressions correctly.
Namely that they're compile failures or boot up failures.  Which are
both things we have automated testing for.

> Yes, maintainers would still have some more work with that than the
> current "fire & forget" approach, but it's more "fire & get a reminder"
> rather than what you're proposing which would require me to track it
> all, across various stable releases managed by various people, which
> frankly I can't imagine being able to do (or even find qualified people
> willing to help me do that, right now.)

Agreed.

thx,

Jason.
