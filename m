Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 530E19E8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 Aug 2017 11:53:56 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 06A30487
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 Aug 2017 11:53:55 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 09 Aug 2017 14:54:10 +0300
Message-ID: <3480233.9liJEo2Msz@avalon>
In-Reply-To: <87efslsj7w.fsf@notabene.neil.brown.name>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<87efslsj7w.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Neil,

On Wednesday 09 Aug 2017 10:00:51 NeilBrown wrote:
> On Thu, Aug 03 2017, Andy Lutomirski wrote:
> > [Note: I'm not entirely sure I can make it to the kernel summit this
> > year, due to having a tiny person and tons of travel]
> > 
> > This may be highly controversial, but: there seems to be a weakness in
> > the kernel development model in the way that new ABI features become
> > stable.  The current model is, roughly:
> > 
> > 1. Someone writes the code.  Maybe they cc linux-abi, maybe they don't.
> > 2. People hopefully review the code.
> > 3. A subsystem maintainer merges the code.  They hope the ABI is right.
> > 4. Linus gets a pull request.  Linus probably doesn't review the ABI
> > for sanity, style, blatant bugs, etc.  If Linus did, then he'd never
> > get anything else done.
> > 5. The new ABI lands in -rc1.
> > 6. If someone finds a problem or objects, it had better get fixed
> > before the next real release.
> > 
> > There's a few problems here.  One is that the people who would really
> > review the ABI might not even notice until step 5 or 6 or so.  Another
> > is that it takes some time for userspace to get experience with a new
> > ABI.
> > 
> > I'm wondering if there are other models that could work.  I think it
> > would be nice for us to be able to land a kernel in Linus tree and
> > still wait a while before stabilizing it.  Rust, for example, has a
> > strict policy for this that seems to work quite well.
> > 
> > Maybe we could pull something off where big new features hide behind a
> > named feature gate for a while.  That feature gate can only be enabled
> > under some circumstances that make it very hard to mistake it for true
> > stability.  (For example, maybe you *can't* enable feature gates on a
> > final kernel unless you manually patch something.)
> > 
> > Here are a few examples that come to mind for where this would have
> > helped:
> >  - Whatever that new RDMA socket type was that was deemed totally
> >    broken but only just after it hit a real release.
> >  - O_TMPFILE.  I discovered that it corrupted filesystems in -rc6 or
> >    -rc7.  That got fixed, the the API is still a steaming pile of crap.
> >  - Some cgroup+bpf stuff that got cleaned up in a -rc7 or so a few
> >    releases ago.
> >
> > I'm sure there are tons more.
> > 
> > Is this too crazy, or is it worth discussing?
> 
> I think this is a real issue and it would be good to see improvements.
> 
> I think this is primarily a social/communication issue.  We need to know
> what is expected and what can be trusted.  We need clear rules that
> everyone knows and that work for everyone.  Currently we have (fairly)
> clear rules that work fairly well in many cases, but can be problematic.
> 
> The rules, as you outline, are that users should not experience
> regressions from one released kernel to a subsequent released kernel.
> So people working on -rc kernels can expect to experience regressions.
> Also kernel devs are free to create theoretical regressions as long an
> no-one experiences them.
> 
> My strawman is to suggest that we relax this.  We change the promise "if
> it works on a released kernel, it will work on all future released
> kernels", to "if it works on N consecutive released kernels, it will
> work on all future released kernels", and then bikeshed the value of N,
> but probably settle on N=2.
> This should give important new freedom to kernel developers, and impose
> a (hopefully) small burden on application developers.  They should be
> testing their code anyway (we all should), now they have to test it
> twice.
> To make that burden smaller, we could aim to apply all "new API fixes"
> to the -stable kernels promptly.
> If a new API appears in Linux N it might behave differently in N+1, but
> in that case the first N.M stable kernel released after N+1 will also
> have the new behaviour.
> So developing against that N.M should always be safe.  Any APIs it has
> are declared to be stable.

I fear this will lead us to a situation where new APIs will receive less 
scrutiny because developers will rely on the ability to change the API for the 
next kernel. Of course they will then be sidetracked by something else, and 
the next kernel will be released without any API change.

I might be overly pessimistic here, but I don't think we will be able to 
tackle what is largely a human problem (not paying enough attention to new 
APIs) with a small process adjustment. Let's face it, as long as we don't 
educate developers about APIs, we won't get this right, exactly the same way 
that developers need to be educated about security or race conditions.

Education is a slow process but gives the best results. What we should first 
aim for, in my opinion, isn't to turn everybody into an API expert, but to 
have enough reviewers who can spot API changes and wave a red flag if the 
change hasn't gone to a proper review process. Part of this could possibly be 
automated as discussed in this mail thread, but at the end of the day it's 
really about a culture change to make sure APIs are treated with enough care.

Now, assuming we can fix this first problem and get all new APIs properly 
reviewed and tested, the next question is what a proper review and test 
process should be. The DRM/KMS subsystem has put a process in place (as 
explained by Daniel Vetter in this mail thread) where every new API has to be 
implemented in real userspace components (and thus not just in test tools) and 
approved by the appropriate maintainers. The bar is pretty high, and possibly 
too high, but it is in my opinion better than the other way around.

Yes, this will slow down patch acceptance, but I don't think that's a problem, 
quite the contrary. I'd rather slow down merging new APIs upstream than having 
to live with lots of crappy APIs, as long as the development process at the 
subsystem level is not slowed down. That's where process and infrastructure 
could help, to ensure that userspace components consuming new APIs can easily 
find the kernel code they need to test. I don't think named feature gates, as 
proposed by Andy, are needed (we had that a while ago, it was called 
CONFIG_EXPERIMENTAL, and proved to be useless), but I'm open to discussion in 
that area.

> My other strawman is to declare that if an API is not documented, then
> it isn't stable.  People are welcome to use undocumented APIs, but when
> their app breaks, they get to keep both parts.  Of course, if the
> documentation is wrong, that puts us in an awkward place - especially if
> the documented behaviour is impossible to implement.  We can then
> schedule the release of the documentation at whatever time seems
> appropriate given the complexity and utility of the particular API.

I'd go one step further and say that every API has to be documented. There 
will always be undocumented features in every API as no documentation is 
perfect, and corner cases that nobody thought about can result in interesting 
undocumented behaviour that userspace starts relying on, but documentation is 
a must, and should not be written after the code stabilizes. Writing 
documentation is actually a good way to realize that an API is broken.

> My main point here is that I think the only real solution here is to
> revise the current social contract.  Trying to use technology to detect
> API changes - as has been suggested in this thread - is not a bad idea,
> but is unlikely to catch the really important problems.

-- 
Regards,

Laurent Pinchart
