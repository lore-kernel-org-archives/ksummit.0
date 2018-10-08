Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7AA5D6CE4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 14:08:28 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0B7107C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 14:08:27 +0000 (UTC)
Message-ID: <1539007704.4344.2.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Dave Airlie <airlied@gmail.com>
Date: Mon, 08 Oct 2018 07:08:24 -0700
In-Reply-To: <CAPM=9tz3Z=vD6qWUL2boZGEAgMeC_o9euBXFu2V58RHOn6gR9g@mail.gmail.com>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861799.4088.6.camel@HansenPartnership.com>
	<CAPM=9tz3Z=vD6qWUL2boZGEAgMeC_o9euBXFu2V58RHOn6gR9g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: LKML <linux-kernel@vger.kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH 1/2] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2018-10-08 at 08:25 +1000, Dave Airlie wrote:
> On Sun, 7 Oct 2018 at 07:36, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > 
> > From 4a614e9440148894207bef5bf69e74071baceb3b Mon Sep 17 00:00:00
> > 2001
> > From: James Bottomley <James.Bottomley@HansenPartnership.com>
> > Date: Sat, 6 Oct 2018 14:21:56 -0700
> > Subject: [PATCH 1/2] code-of-conduct: Fix the ambiguity about
> > collecting email  addresses
> > 
> > The current code of conduct has an ambiguity in the it considers
> > publishing private information such as email addresses unacceptable
> > behaviour.  Since the Linux kernel collects and publishes email
> > addresses as part of the patch process, add an exception clause for
> > email addresses ordinarily collected by the project to correct this
> > ambiguity.
> > 
> > Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.c
> > om>
> > ---
> >  Documentation/process/code-of-conduct.rst | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/process/code-of-conduct.rst
> > b/Documentation/process/code-of-conduct.rst
> > index ab7c24b5478c..aa40e34e7785 100644
> > --- a/Documentation/process/code-of-conduct.rst
> > +++ b/Documentation/process/code-of-conduct.rst
> > @@ -31,7 +31,7 @@ Examples of unacceptable behavior by participants
> > include:
> >  * Trolling, insulting/derogatory comments, and personal or
> > political attacks
> >  * Public or private harassment
> >  * Publishing others’ private information, such as a physical or
> > electronic
> > -  address, without explicit permission
> > +  address not ordinarily collected by the project, without
> > explicit permission
> >  * Other conduct which could reasonably be considered inappropriate
> > in a professional setting
> > 
> 
> I agree we want something like this, the question is whether we want
> to change the CoC text from upstream, or clarify it in a separate
> section.

A Code of Conduct should be clear and not hedged around with footnotes
and interpretations in my opinion, which is why I offered the patch
like this.

> This isn't a legally binding license or anything, but departing from
> the upstream wording makes it tricker to merge new upstream versions
> if they are considered appropriate.

The way I look at this is that it's very much like a vendor driver. 
Some are mirror images of the source because we work closely with them;
others could be forks.  However, the process for vendor drivers is that
we make them work for us first and then see how the vendor wants to
handle it.

Once we agree the shape of what we need I promise to try to push it
back into the source ... is that good enough compromise?

James
