Return-Path: <tytso@thunk.org>
Date: Thu, 22 Oct 2015 11:25:02 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20151022152502.GA28761@thunk.org>
References: <20151020220328.GA21941@thunk.org>
	<CAOesGMiZrhXk4W=VScQ9ctnSqzCt6ba4QkPKAeACdaBRhDEjbw@mail.gmail.com>
	<20151021145626.GD2165@thunk.org> <5627AD56.7050500@roeck-us.net>
	<20151021160907.GM32054@sirena.org.uk>
	<5627BF30.4080703@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5627BF30.4080703@roeck-us.net>
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] Kernel Summit Agenda -- 2nd draft
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Oct 21, 2015 at 09:37:04AM -0700, Guenter Roeck wrote:
> 
> Sure, and I do that if I can find the time. In my experience, submitting
> patches to fix observed problems turns out to be the best approach.
> Even (or especially) if plain wrong or less than perfect, patches are
> almost guaranteed to trigger a response.
> 
> Doing this is just very time consuming, and time is always short.
> 
> Also, while beneficial for the system as a whole, I am not sure if it is
> beneficial for the submitter. Touching multiple subsystems almost
> guarantees for the submitter to get something wrong, either because
> of unfamiliarity with the code or because of maintainer preferences.

Speaking as a maintainer, if you can report a regression, I will
definitely take it seriously, with or without a patch.  What's
actually most useful is a git bisection, or failing that, a report of
the last kernel version where things worked, and a reliable repro.
Not that I would turn down a patch, of course, but being able to point
the finger at the guilty patch is often the most useful thing a bug
reporter can contribute.

Cheers,

					- Ted
