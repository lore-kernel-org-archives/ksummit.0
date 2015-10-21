Return-Path: <linux@roeck-us.net>
To: Mark Brown <broonie@kernel.org>
References: <20151020220328.GA21941@thunk.org>
	<CAOesGMiZrhXk4W=VScQ9ctnSqzCt6ba4QkPKAeACdaBRhDEjbw@mail.gmail.com>
	<20151021145626.GD2165@thunk.org> <5627AD56.7050500@roeck-us.net>
	<20151021160907.GM32054@sirena.org.uk>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <5627BF30.4080703@roeck-us.net>
Date: Wed, 21 Oct 2015 09:37:04 -0700
MIME-Version: 1.0
In-Reply-To: <20151021160907.GM32054@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
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

On 10/21/2015 09:09 AM, Mark Brown wrote:
> On Wed, Oct 21, 2015 at 08:20:54AM -0700, Guenter Roeck wrote:
>
>> Number of build and runtime breakages in -next is a bit high, and fixes are
>> sometimes slow to roll in. At least in part this is because those responsible
>> for breakages are not informed, but I have also seen problems which were
>> known for weeks to propagate into mainline before they got fixed, even if
>> the culprit was informed. This could use some improvement, though I am not
>> really sure how we could get there. Make more noise ?
>
> Noise is probably a large part of it, having a human following up about
> issues seems to help a lot.
>

Sure, and I do that if I can find the time. In my experience, submitting
patches to fix observed problems turns out to be the best approach.
Even (or especially) if plain wrong or less than perfect, patches are
almost guaranteed to trigger a response.

Doing this is just very time consuming, and time is always short.

Also, while beneficial for the system as a whole, I am not sure if it is
beneficial for the submitter. Touching multiple subsystems almost
guarantees for the submitter to get something wrong, either because
of unfamiliarity with the code or because of maintainer preferences.

Does submitting patches all over the place benefit or hurt my reputation
with other maintainers, given that the percentage of rejected patches
is quite high ? I don't know, and I don't really care that much since my
ultimate goal is to get problems fixed, not to get my patches accepted.
However, for others it may play a role when deciding if or if not to
spend the time, track down a problem, and submit a patch for it.

> I've seen some active resistance to pushing fixes to mainline without
> lengthy soaks in -next in a very rules based fashion which isn't super
> awesome when it takes out other testing due to the breakage.  As the
> test coverage improves this is going to be getting to be more and more
> of an issue as failures to build or boot will cause gaps in other
> testing.
>
For fixes ? I don't recall seeing that reaction, at least not to patches
I have been involved in. Unless in very special cases, it doesn't seem
to make much sense to me to require bug fixes to soak in -next.

Guenter
