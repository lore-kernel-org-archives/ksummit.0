Return-Path: <luisbg@osg.samsung.com>
Message-ID: <57837B86.9030202@osg.samsung.com>
Date: Mon, 11 Jul 2016 11:57:10 +0100
From: Luis de Bethencourt <luisbg@osg.samsung.com>
MIME-Version: 1.0
To: Theodore Ts'o <tytso@mit.edu>, Vinod Koul <vinod.koul@intel.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>	<20160709000631.GB8989@io.lakedaemon.net>	<1468024946.2390.21.camel@HansenPartnership.com>	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>	<20160709093626.GA6247@sirena.org.uk>	<20160710162203.GA9681@localhost>	<20160710170117.GI26097@thunk.org>	<20160711050000.GC9681@localhost>
	<20160711051335.GQ26097@thunk.org>
In-Reply-To: <20160711051335.GQ26097@thunk.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 11/07/16 06:13, Theodore Ts'o wrote:
> On Mon, Jul 11, 2016 at 10:30:00AM +0530, Vinod Koul wrote:
>>> There are **eleven** stable or longterm trees listed on kernel.org.
>>> If you are going to ask patch submitters to test on all of the stable
>>> trees, that pretty much guarantees that nothing at all will be cc'ed
>>> to stable.
>>
>> Isn't that a part of problem as well. If I am submitting a fix,
>> shouldn't I be able to backport and validate the fix on stable kernels?
> 
> You might be *able* to pay me a $1000 dollars (e.g., you have that
> much in your savings account).  That doesn't mean that you *will*, or
> that you *should*, or have any moral *obligation* to pay me $1000
> dollars.  (But if you do want to write me a check, feel free....  :-)
> 
> If a developer at Facebook finds a bug, and they fix it for upstream,
> they do so partially out of the goodness of their hearts, and
> partially because that way they don't have to do extra work to forward
> port a private patch when they move to a newer upstream kernel.  But
> the GPL doesn't require that they share bug fixes with upstream ---
> it's just in their economic incentive to do so.  (Even if it does help
> their competitors who might now not have to do the same bug report.
> And since developers at Google are also doing the same thing, it all
> works well.)
> 
> Ok, now let's grant that the same Facebook developer is *able* to
> backport the same patch to 11 different stable kernels, and do a full
> QA validation on all of these different stable.  Now the extra 15-30
> minutes that it might take to prepare the patch for upstream might now
> take a day or two.  What benefit does the Facebook developer have
> doing that?  Almost none.  By what moral or legal right do you have to
> demand that the Facebook developer do all of that extra work?  Exactly
> zero.
> 
> Now, suppose *you* are under a tight deadline to get work done for
> your company's shipping product.  How do you think your manager would
> react if you tell her, I'm sorry, but our competitors at Qualcomm are
> demanding that I take my upstream patch contribution and backport and
> QA it on a dozen different stable kernels so they can more easily put
> out BSP kernels for products that directly complete with Intel's?  Let
> me guess that the answer might very well be, "not well".
>

Increasing the barrier of entry for patches in mainline would demotivate
many submitters. Linux has done a great job of keeping it low and IMHO
it is one of the reasons of its great success.

Could the work of creating and running a unified testing, QA, and
continuous integration system for stable branches be taken by other
people, who are not the original submitters or the subsystem maintainers?

Would stable branch maintainers sharing more information and/or
infrastructure help reduce work duplication?

Luis
 
>>> And if device kernels or BSP kernels aren't bothering to track
>>> -stable, it becomes even more unfair to force that work on the
>>> maintainers or patch submitters.  If they are just going to be cherry
>>> picking random patches out of the -stable kernel when they notice a
>>> problem, does it make sense to do invest in doing full QA's for every
>>> single commit before it goes into -stable?
>>
>> And IMO since submitter know the target and has the hardware for test,
>> it would be more easy for that person to verify..
> 
> The submitter is not necessarily going to have all of the hardware to
> test.  Heck, Intel has shipped i915 drivers that have broken my
> Thinkpad dock (in fact the video out on my dock has been mostly
> useless for the past year), multiple times in the past and so I'm
> pretty sure Intel isn't testing their i915 driver on all of the
> different hardware connected to the i915 chipset --- and this is
> regressions on the *HEAD* of the Linux tree, never mind backports into
> stable....
> 
>        	      	    	  	     	       - Ted
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
