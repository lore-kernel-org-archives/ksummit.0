Return-Path: <rjw@rjwysocki.net>
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Date: Sat, 24 Oct 2015 17:19:54 +0200
Message-ID: <4044189.WHDVit0MzK@vostro.rjw.lan>
In-Reply-To: <20151022200110.GG10000@piout.net>
References: <20151020220328.GA21941@thunk.org>
	<20151022152502.GA28761@thunk.org>
	<20151022200110.GG10000@piout.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: ksummit-discuss@lists.linux-foundation.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Kernel Summit Agenda -- 2nd draft
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thursday, October 22, 2015 10:01:10 PM Alexandre Belloni wrote:
> On 22/10/2015 at 11:25:02 -0400, Theodore Ts'o wrote :
> > On Wed, Oct 21, 2015 at 09:37:04AM -0700, Guenter Roeck wrote:
> > > 
> > > Sure, and I do that if I can find the time. In my experience, submitting
> > > patches to fix observed problems turns out to be the best approach.
> > > Even (or especially) if plain wrong or less than perfect, patches are
> > > almost guaranteed to trigger a response.
> > > 
> > > Doing this is just very time consuming, and time is always short.
> > > 
> > > Also, while beneficial for the system as a whole, I am not sure if it is
> > > beneficial for the submitter. Touching multiple subsystems almost
> > > guarantees for the submitter to get something wrong, either because
> > > of unfamiliarity with the code or because of maintainer preferences.
> > 
> > Speaking as a maintainer, if you can report a regression, I will
> > definitely take it seriously, with or without a patch.  What's
> > actually most useful is a git bisection, or failing that, a report of
> > the last kernel version where things worked, and a reliable repro.
> > Not that I would turn down a patch, of course, but being able to point
> > the finger at the guilty patch is often the most useful thing a bug
> > reporter can contribute.
> > 
> 
> One corner case that can happen is that a maintainer takes a patch for
> another subsystem (because it also touches his subsystem or depends on
> it or whatever). If this patch introduces a regression, it is sometimes
> difficult to get a fix merged because it is not obvious that the
> maintainer that took the offending patch has to take it and the
> subsystem maintainer can't take the fix until -rc1.

Quite arguably, whoever took a patch is also responsible for handling any
fallout from it as a rule.

Thanks,
Rafael
