Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 329441577
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 19:28:06 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A370076D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 19:28:05 +0000 (UTC)
Message-ID: <1560454082.3329.69.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Date: Thu, 13 Jun 2019 12:28:02 -0700
In-Reply-To: <yq18su51q92.fsf@oracle.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<1560436507.3329.12.camel@HansenPartnership.com>
	<yq18su51q92.fsf@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2019-06-13 at 11:03 -0400, Martin K. Petersen wrote:
> James,
> 
> > It depends: every patch you do to an old driver comes with a risk
> > of breakage.  What we've found is even apparently sane patches
> > cause breakage which isn't discovered until months later when
> > someone with the hardware actually tests.
> 
> My pet peeve is with the constant stream of seemingly innocuous
> helper-interface-of-the-week changes. Such as "Use kzfoobar() instead
> of kfoobar() + memset()". And then a year later somebody decides
> kzfoobar() had a subtle adverse side-effect and now we all need to
> switch to kpzfoobar().
> 
> I appreciate that some of these helpers may have merit in terms of
> facilitating static code checkers, etc. But other than that, I really
> fail to see the value of this constant churn.
> 
> The devil is always in the details. It's almost inevitably these
> obvious five-liners that cause regressions down the line.
> 
> So why do we keep doing this?

Heh, this reminds me a lot of the module section annotations (you
remember, things like __devinit).  We built a huge tooling system which
allowed hundreds of patches to "fix" the problems for obscure Kconfig
values.  Simply eliminating the lot was a huge relief and no-one at all
has missed it ever ... it was basically a huge make-work patch
generation system.

Perhaps the time has come to require justification of replacing
kmalloc/memset with kzalloc ... I don't think the pattern is hugely
bad, but if it doesn't improve anything the code, why do it?

So what I'd like to see is instead of simply "Coccinelle found this so
I'm sending a patch" require something like "Coccinelle found this and
it occurs in the fast path where using architecturally cleared memory
results in a 5% speed up of the code".

James
