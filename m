Return-Path: <bhelgaas@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4A835EA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 19:54:08 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AABFEE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 19:54:07 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id p13so3701964wru.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 12:54:07 -0700 (PDT)
MIME-Version: 1.0
References: <1559836116.15946.27.camel@HansenPartnership.com>
In-Reply-To: <1559836116.15946.27.camel@HansenPartnership.com>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Fri, 14 Jun 2019 14:53:50 -0500
Message-ID: <CAErSpo5WVP_7t_LDBbaJ7bHc_MgkpV=1KYsQx_zULKkjQf3azA@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Thu, Jun 6, 2019 at 10:49 AM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:

> 2) Patch Acceptance Consistency: At the moment, we have very different
> acceptance criteria for patches into the various maintainer trees.
> Some of these differences are due to deeply held stylistic beliefs, but
> some could be more streamlined to give a more consistent experience to
> beginners who end up doing batch fixes which cross trees and end up
> more confused than anything else.  I'm not proposing to try and unify
> our entire submission process, because that would never fly, but I was
> thinking we could get a few sample maintainer trees to give their
> criteria and then see if we could get any streamlining.  For instance,
> SCSI has a fairly weak "match the current driver" style requirement, a
> reasonably strong get someone else to review it requirement and the
> usual good change log and one patch per substantive change requirement.
>  Other subsystems look similar without the review requirement, some
> have very strict stylistic requirements (reverse christmas tree, one
> variable definition per line, etc).  As I said, the goal wouldn't be to
>  beat up on the unusual requirements but to see if we could agree some
> global baselines that would at least make submission more uniform.

The "when in Rome" rule (follow local conventions) would cover a large
fraction of the style issues without requiring global uniformity or
even documentation.  I'm amazed at how often it is ignored.
