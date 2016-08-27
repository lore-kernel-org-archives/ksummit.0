Return-Path: <jra@samba.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9D65626C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 01:30:25 +0000 (UTC)
Received: from hr2.samba.org (hr2.samba.org [144.76.82.148])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9C5CA1D8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 01:30:24 +0000 (UTC)
Date: Fri, 26 Aug 2016 18:30:15 -0700
From: Jeremy Allison <jra@samba.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20160827013015.GA21071@jeremy-acer>
Reply-To: Jeremy Allison <jra@samba.org>
References: <20160826193331.GA29084@jra3>
	<CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
	<20160826224213.GA1181@jra3>
	<20160826230236.yky53kd5k4632ftd@thunk.org>
	<20160826235853.GA6898@jra3>
	<CA+55aFys2c7ts_qoojZANfk2PmPqwOSuN3j1L-Eb_75NYZOP_A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+55aFys2c7ts_qoojZANfk2PmPqwOSuN3j1L-Eb_75NYZOP_A@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 26, 2016 at 05:19:55PM -0700, Linus Torvalds wrote:
> On Fri, Aug 26, 2016 at 4:58 PM, Jeremy Allison <jra@samba.org> wrote:
> > Can you describe the conditions you personally would feel justify
> > filing a lawsuit over GPL non-compliance ?
> 
> You asked Ted, but I'll answer for one of the conditions for me: that
> it is not some gray area. It has to be a pretty damn clear violation.
> 
> Quite frankly, I've seen a lot of people be confused about what the
> GPLv2 actually says over the years. The most common confusion is the
> whole thing about "linking". It gets mentioned a lot.
> 
> Not only is "linking" not something that has any legal meaning, but
> the GPLv2 doesn't even mention it.  Yet people _continually_ talk
> about linking.
> 
> I think the confusion actually comes from the FSF itself, and the
> original LGPL discussions, where the FSF at some point tried to
> convince people that linking against a GPL library somehow meant that
> the end result was a "derived work" in a very different way than "mere
> aggregation". It comes from some GPL maximalist argument, and it's
> where the whole LGPL came from, after all.
> 
> So a *lot* of people think that "linking" means that the GPLv2 is
> automatically in effect.
> 
> But what the license says - and more importantly, what copyright law
> itself actually is all about - is not linking, but "derived work".
> 
> And there's a _lot_ of gray areas there, and no, technical measures
> does not make something derived or not.
> 
> In the kernel, we have tried to kind of clarify our thinking with the
> whole module interface, and the EXPORT_SYMBOL_GPL() distinction - the
> argument being one of both intent (which does have some legal weight,
> although the key word there is "some") and just to clarify that some
> parts are so clearly "internal Linux implementation" that if you need
> them, you're clearly not an independent module.
> 
> But everybody should know that that is not necessarily black and white
> either. Are GPL'd shim modules that use that EXPORT_SYMBOL_GPL() and
> thjen export something else (non-GPL'd) that uses them legal? They
> certainly fail the _smell_ test. A technical trick doesn't really have
> any legal meaning. If I were a judge (and I'm not, not even a lawyer),
> I'd certainly frown on it, but I might not take the initial
> EXPORT_SYMBOL_GPL() distinction all that seriously _either_.
> 
> Anyway, end result is that there's a lot of very murky "what is
> actually a derived work" issues.
> 
> I'd not be interested in ever having a lawsuit to "clarify" such an
> issue. I don't think it would really clarify anything anyway (it will
> just set one boundary in one case for one specific thing).
> 
> So it has to be a pretty damn obvious violation.

So it's a "I know it when I see it" boundary, like porn or
indecency :-).

Actually, that was pretty damn helpful. At least it shows there
is a "this far and no further" line beyond which you think a
lawsuit can be appropriate. I was getting worried that there
was no violation so egregious that you'd think was worth legal
action.

That way lies BSD-land.. (and the mountains of Madness :-).

Actually, your feelings are pretty similar to mine (other than
the harsh words about the FSF, but then again they did kill
your dog :-).

I try and set a similar set of boundaries when it comes to
Samba - which can load the equivalent of kernel modules via
our pluggable VFS interface.

My rules are:

1). In kernel - not my business (unless you're crazy enough
to try and put the entirety of Samba in-kernel) - go forth
with my blessings.

2). In kernel-but with "special“ system calls used by Samba
VFS modules. Here I want the source code for the Samba VFS
module released, but what's in the kernel is your business.

Interestingly enough there have been some vendors who tried
to argue they could keep their system calls secret by hiding
the Samba VFS code - but we ended up with a successful outcome
(in one case by getting them to commit next release to a
fully specified syscall interface as the one they were using
was too ugly to support long term).

3). In a separate process - but Samba talks to it via IPC.
Still not my code, but it's getting closer depending on how
closely tied the IPC is. If your daemon simply won't do anything
without Samba talking to it, then I'd argue this is probably
a derived work. But it depends. This is the most difficult
case, similar to your "independent module" question above.

I usually say if the IPC interface has other uses than just
Samba (i.e. the NFS server uses it too), then it's not a
derived work. I've successfully gotten several companies
to architect their solutions this way to avoid any possible
violation questions. It usually gets them to create a better
solution as well, as thinking about an interface having to
be used by multiple consumers almost always ends up in a better
design.

4). Code modifications to Samba itself. You code is *mine*.
Unless you're Amazon of course, who run Samba4 Active Directory
in their cloud and never ship to their customers :-). Even then
they're slowly but surely getting their changes upstream by
contracting with one of the vendors who employ Samba Team
members.

There are many other grey areas, but the main thing I try
and do by enumerating these rules is to give clarity to
corporations wanting to use the code.

The only time we've ever come close to a lawsuit was a long
time ago with a company that just renamed the source code
files, added a license manager and tried to sell us as a
proprietary solution ! Even then it was only after we contacted
their main purchaser to let them know what they were buying
that these guys went back to stealing car radios, or whatever
previous petty criminality they used to make a living doing.

Having said that these are just my opinions, and I know there
are differing opinions within the Samba Team developers.

The main thing is that we all reach consensus before asking
Conservancy to take any action on our behalf. The other Team
developers trust Conservancy to act in a responsible way.

The way to ensure that happens is to join the Conservancy
"GPL Compliance Project For Linux Developers" so your
individual voice is heard. I'm sure they'd love to have
you ! :-).
