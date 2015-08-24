Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9555C8A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 22:55:03 +0000 (UTC)
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CB79363
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 22:55:02 +0000 (UTC)
Received: by igbjg10 with SMTP id jg10so73848459igb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 15:55:02 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <1440446941.2201.32.camel@HansenPartnership.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
Date: Mon, 24 Aug 2015 15:55:01 -0700
Message-ID: <CAGXu5j+JNkdMHQJL=2AGQhB+dR9sZPJDG=NPafbdODMs6EexzQ@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: Emily Ratliff <eratliff@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 24, 2015 at 1:09 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Mon, 2015-08-24 at 09:35 -0700, Kees Cook wrote:
>> On Mon, Aug 24, 2015 at 5:29 AM, Linus Walleij <linus.walleij@linaro.org> wrote:
>> > On Mon, Aug 24, 2015 at 6:20 AM, James Morris <jmorris@namei.org> wrote:
>> >
>> >> There are also potentially promising approaches to mitigation with other
>> >> technologies such as KASan and gcc plugins, as well as evolving hardware
>> >> features.
>> >
>> > What I've discovered when running KASan the last few weeks is that
>> > this points back to the question of tests ... I've been using Trinity
>> > to find bugs, but it is more likely to kill itself or cause OOM than
>> > trigger any boundary overrun bugs.
>> >
>> > Kselftest may be helpful, but basically any loads that heavily
>> > exercise the kernel internals are helpful to harden the kernel.
>> > Some of these are custom test suites I suspect. Any good hints
>> > for a simple embedded developer like me?
>>
>> I agree with the sentiment here, but not with the language. Finding
>> flaws (which is what selftests, KASan, Trinity, etc do) isn't
>> hardening. Hardening is stopping the exploitation of flaws.
>
> Um, forgive me for being dense, but doesn't fixing the flaws stop their
> exploitation?  In any event, Hardening means "reducing the attack
> surface" and that encompasses both active and passive means (including
> actual bug fixing).

I think "hardening" isn't a very precise word for security work,
actually. The language I try to use around these things (each in the
context of "security"):

flaw - a bug that provides some type of attack primitive (generally
memory reads and writes).
exploit - delivery of executable payload via flaws (this is a
technique to gain control via the flaw primitives)

Many times all we see are the flaws and a theoretical example. If
we're lucky, we see a brief PoC that triggers an Oops or something.
Then we fix the flaw and move on. We are not as exposed to fully
functional exploits. Overwriting syscall tables, IDT entries, function
pointers, or the kernel itself, chaining code snippets with ROP, heap
manipulation, and on and on.

So, elimination of flaws is certainly good, but there will always be
more. And it is worth noting that they exist _now_. There are multiple
full privileges escalation flaws in the kernel you're using right now.
We -- the upstream kernel community -- just don't know where they are.
Even Jon's conservative estimate is that these flaws tend to live at
least 5 years: https://lwn.net/Articles/410606/

We are finding the bugs, and we can do better, but that's not what I
think needs the most attention right now. We need to kill classes of
bugs and classes of exploits. To kill a bug class, we must remove the
possibility that it can ever go wrong in the first place. Many people
stop here when thinking about hardening, but we must move on to
killing classes of exploit. I'll continue to use my W^X kernel code
example, since it was not, from an operational stance, a flaw that
kernel code was writable. But it's a exploitation weakness. If an
attacker just needs to directly target a kernel memory location with
their memory-write primitive, all their work is done, that user loses
control of their kernel, game over.

We need to add the safety nets under the acrobats, since they can fall
at any time.

>>  The
>> hardening the kernel needs is about taking away exploitation tools,
>> not killing bugs. (Though killing bugs is still great.)
>
> It's both.  One of the old standards for attacking C code was buffer
> overruns.  Remove those via detection tools and you reduce the attack
> surface.

Well, attack surface is just what interfaces are exposed to an
attacker. But yes, killing bug classes is important. Making bugs
unexploitable is even better because then security bugs really do just
become bugs.

>> As an example, making the kernel code memory read-only means an
>> attacker cannot just directly change the kernel's execution path when
>> they use an arbitrary memory-writing flaw. (This feature is mostly
>> enabled via CONFIG_DEBUG_RODATA, and was very recently added to ARM,
>> though isn't at 100% coverage for all the physical memory aliases.)
>
> Yes, I like this one a lot.  Adding mechanisms that don't increase
> complexity like this are good active means.  However, I become less
> enamoured of things like selinux and grsecurity which add complexity in
> the name of active attack surface reduction.  That's not to say never do
> it, it's just to say that attack surface is directly related to
> complexity.

FWIW, really only reduces userspace attack surface (all syscalls are
still available to a confined process). seccomp reduces attack
surface. grsecurity has an MAC component, but grsecurity (with PaX) is
much larger. Regardless, some of these nets will increase complexity.
It's the same for anti-lock brakes and airbags[1]. We have to take on
this burden to protect our users from our mistakes.

-Kees

[1] Borrowing mricon's great analogy as presented at the Security
Summit this year:
http://kernsec.org/files/lss2015/giant-bags-of-mostly-water.pdf

-- 
Kees Cook
Chrome OS Security
