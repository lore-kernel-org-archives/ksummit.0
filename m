Return-Path: <mcgrof@gmail.com>
MIME-Version: 1.0
Sender: mcgrof@gmail.com
In-Reply-To: <20151021145626.GD2165@thunk.org>
References: <20151020220328.GA21941@thunk.org>
	<CAOesGMiZrhXk4W=VScQ9ctnSqzCt6ba4QkPKAeACdaBRhDEjbw@mail.gmail.com>
	<20151021145626.GD2165@thunk.org>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Sun, 25 Oct 2015 22:56:49 -0700
Message-ID: <CAB=NE6X=sD__dC6N=ap7i7eb1fEJi0wQgsFyTQ7mZ3TdnQuPYQ@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>, Jonathan Corbet <corbet@lwn.net>,
	Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset=UTF-8
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

On Wed, Oct 21, 2015 at 7:56 AM, Theodore Ts'o <tytso@mit.edu> wrote:
> On Tue, Oct 20, 2015 at 07:36:31PM -0700, Olof Johansson wrote:
>> > 3:30    - Kernel Development Process (Is Linus happy?)
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

I was reluctant to bring this up, but today's presentation by Jonathan
Corbet, prompts me to throw one possible optimization out there. This
issue does not relate to Linus or Stephen directly but rather
developers who need to work with the implications of our subsystem
maintainer model. Although our pace is great, one area where I think
is a bit troublesome and can only get more troublesome with more time
is the impact of *cross-tree collateral evolutions* of code as code
size grows. I say cross-tree as if you're working with only one
subsystem this issues does not exist. The type of cross-tree
collateral evolutions could be simple library changes, or just
renames, or more complex things. They tend to be an issue because of
the large size of the kernel but not because these cross-tree
collateral evolutions are hard to to implement, given that we now have
tools to help us with this, but rather simple coordination between
different tree maintainers, the impact of this on a large queue set of
pending changes in different subsystem maintainer trees, and the long
delay which is now needed over all the different subsystem maintainer
acks needed for the cross-tree collateral evolution. Since the kernel
is *so big* things that can help with this might be increasing the
pace of a release, that has its own drawbacks though... Another
possibility is to have a dedicated tree for cross-tree collateral
evolutions. I proposed this a while ago [0] through a linux-oven. I go
into the issues on the thread, so instead of copy+pasting that here
please refer to that for more details. The only addendum to that
e-mail I can add is that for approach 3) (merge all changes via one
maintainer) mentioned there is that one can merge things actually
*either* at the end of the merge window or a the beginning and the
choice is up to the maintainer who decides to take things in if the
choice for the cross-tree collateral evolutions is to go through *one*
maintainer.

Reason this probably has not come up as an issue of concern to Linus
or other maintainers is that its the developer's job to do all the
work to get the cross-tree collateral evolutions in. The maintainers
are only involved when doing coordination with other maintainers, and
Linus would hopefully and ideally be removed or shielded from issues
when issues creep up on these, mostly thanks these days to linux-next.
Invite you to seriously evaluate the timing implications on the e-mail
referenced so you get an idea of why although our pace is fast, for
cross-tree collateral evolutions this can become an issue. Specially
if your cross-tree collateral evolutions are requirements for a new
feature or perhaps who knows, maybe a new driver.

[0] http://lkml.kernel.org/r/20150619231255.GC7487@garbanzo.do-not-panic.com

  Luis
