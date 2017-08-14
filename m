Return-Path: <SRS0=twQ0=7Q=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16BA0416
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 20:07:36 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0F78219C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 20:07:35 +0000 (UTC)
Date: Mon, 14 Aug 2017 16:07:33 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20170814160733.631425d7@gandalf.local.home>
In-Reply-To: <3480233.9liJEo2Msz@avalon>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<87efslsj7w.fsf@notabene.neil.brown.name>
	<3480233.9liJEo2Msz@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Andy Lutomirski <luto@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 09 Aug 2017 14:54:10 +0300
Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:

> Hi Neil,
> 

> > > I'm wondering if there are other models that could work.  I think it
> > > would be nice for us to be able to land a kernel in Linus tree and
> > > still wait a while before stabilizing it.  Rust, for example, has a
> > > strict policy for this that seems to work quite well.

I like the model of having to add a patch to implement a new ABI.
Because then technically it never broke if some user space app
depended on it, as the API never existed without modifying the kernel.

But I also wonder if we could have a linux-api similar to linux-next.
Where the linux-api is used to test api's until they are ready. It
should follow Linus's tree, similar to linux-next, where new features
get merged in nightly. But the difference from linux-next is that the
api doesn't have to go into Linus's tree at the next merge window. It
would be a place that APIs could be tested and changed, and not get
into Linus's tree till it is ready.



> Education is a slow process but gives the best results. What we should first 
> aim for, in my opinion, isn't to turn everybody into an API expert, but to 
> have enough reviewers who can spot API changes and wave a red flag if the 
> change hasn't gone to a proper review process. Part of this could possibly be 
> automated as discussed in this mail thread, but at the end of the day it's 
> really about a culture change to make sure APIs are treated with enough care.

I would recommend a static analyzer that looks at linux-next for new
APIs, and flags anything that it finds, where others can audit them.
Perhaps make a rule that no new API is added without documentation, or
if we have the above linux-api, going through that too. This will only
work if it is automated. Linus could see the list of new APIs added and
determine if it should be pulled or not. It would be too much work for
him to search the code for new APIs, but a tool that gives a simple
list that he can check them off after he agrees with them, may be
scalable.

> 
> Now, assuming we can fix this first problem and get all new APIs properly 
> reviewed and tested, the next question is what a proper review and test 
> process should be. The DRM/KMS subsystem has put a process in place (as 
> explained by Daniel Vetter in this mail thread) where every new API has to be 
> implemented in real userspace components (and thus not just in test tools) and 
> approved by the appropriate maintainers. The bar is pretty high, and possibly 
> too high, but it is in my opinion better than the other way around.

As Linux becomes more advanced and used in more critical systems, I
want that bar to rise. I'm trying to police myself with new features,
and make sure they are all documented before adding them as well.

> 
> Yes, this will slow down patch acceptance, but I don't think that's a problem, 
> quite the contrary. I'd rather slow down merging new APIs upstream than having 
> to live with lots of crappy APIs, as long as the development process at the 
> subsystem level is not slowed down. That's where process and infrastructure 
> could help, to ensure that userspace components consuming new APIs can easily 
> find the kernel code they need to test. I don't think named feature gates, as 
> proposed by Andy, are needed (we had that a while ago, it was called 
> CONFIG_EXPERIMENTAL, and proved to be useless), but I'm open to discussion in 
> that area.

We could add a new label CONFIG_TEST_ABI which acts like CONFIG_BROKEN
and doesn't compile that code. One would have to manually remove the
config (hence patch the kernel) to have it compile.

	depends on CONFIG_TEST_ABI

would need to be manually changed to

	depends on CONFIG_RUN_ABI

(OK, I suck with names) and then it would be compiled in. This would
still be in line with Linus's (don't break existing kernels), as the
code he ships will never actually execute without modification. And if
you modify it to run an app, then it's your fault if the app breaks
because it changes.

> I'd go one step further and say that every API has to be documented. There 
> will always be undocumented features in every API as no documentation is 
> perfect, and corner cases that nobody thought about can result in interesting 
> undocumented behaviour that userspace starts relying on, but documentation is 
> a must, and should not be written after the code stabilizes. Writing 
> documentation is actually a good way to realize that an API is broken.

+1

> 
> > My main point here is that I think the only real solution here is to
> > revise the current social contract.  Trying to use technology to detect
> > API changes - as has been suggested in this thread - is not a bad idea,
> > but is unlikely to catch the really important problems.  
> 

But it will definitely help. We can't implement any of this without
tools to track down API changes. If a new API is added, at the very
minimum, there must be some documentation with it. Linus will have the
final say, but it would go a long way if he was able to run some tool
on a series of pull requests to see what new APIs have been added, and
then decided if he should revert them or not if they appear that they
will become unmaintainable in the future.

-- Steve
