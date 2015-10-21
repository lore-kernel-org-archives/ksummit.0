Return-Path: <linux@roeck-us.net>
To: Theodore Ts'o <tytso@mit.edu>, Olof Johansson <olof@lixom.net>
References: <20151020220328.GA21941@thunk.org>
	<CAOesGMiZrhXk4W=VScQ9ctnSqzCt6ba4QkPKAeACdaBRhDEjbw@mail.gmail.com>
	<20151021145626.GD2165@thunk.org>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <5627AD56.7050500@roeck-us.net>
Date: Wed, 21 Oct 2015 08:20:54 -0700
MIME-Version: 1.0
In-Reply-To: <20151021145626.GD2165@thunk.org>
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

On 10/21/2015 07:56 AM, Theodore Ts'o wrote:
> On Tue, Oct 20, 2015 at 07:36:31PM -0700, Olof Johansson wrote:
>>> 3:30    - Kernel Development Process (Is Linus happy?)
>>
>> We usually check in with Stephen Rothwell as well to see how happy or
>> miserable he is, probably in the same slot though?
>
> Yep.  Given the recent "commits in -rc1 not in next" statistic have
> been consistently getting better for the last 3 or 4 releases, I'm
> assuming/hoping this means that on the whole both Linus and Stephen
> are probably pretty happy with how things are going on the development
> process front.
>
> But if Linus, Stephen, or anyone else for that matter has thoughts or
> suggestions about how we can do things better, this is the slot for
> it.
>
Mainline is getting pretty good. Build and runtime failures introduced
in commit windows tend to get fixed around rc3-ish (as measured with
"my builds and qemu tests all pass"), which is much better than it used to be.

Number of build and runtime breakages in -next is a bit high, and fixes are
sometimes slow to roll in. At least in part this is because those responsible
for breakages are not informed, but I have also seen problems which were
known for weeks to propagate into mainline before they got fixed, even if
the culprit was informed. This could use some improvement, though I am not
really sure how we could get there. Make more noise ?

Guenter
