Return-Path: <bart.vanassche@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9CA91D93
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jun 2019 16:18:33 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
	[209.85.214.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4DCE56D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jun 2019 16:18:33 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id f97so1124281plb.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Jun 2019 09:18:33 -0700 (PDT)
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <1559836116.15946.27.camel@HansenPartnership.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <e8b77c18-0e5d-dd47-6053-566893b9e9dc@acm.org>
Date: Thu, 6 Jun 2019 09:18:30 -0700
MIME-Version: 1.0
In-Reply-To: <1559836116.15946.27.camel@HansenPartnership.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
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

On 6/6/19 8:48 AM, James Bottomley wrote:
> 2) Patch Acceptance Consistency: At the moment, we have very different
> acceptance criteria for patches into the various maintainer trees.=20
> Some of these differences are due to deeply held stylistic beliefs, but=

> some could be more streamlined to give a more consistent experience to
> beginners who end up doing batch fixes which cross trees and end up
> more confused than anything else.  I'm not proposing to try and unify
> our entire submission process, because that would never fly, but I was
> thinking we could get a few sample maintainer trees to give their
> criteria and then see if we could get any streamlining.  For instance,
> SCSI has a fairly weak "match the current driver" style requirement, a
> reasonably strong get someone else to review it requirement and the
> usual good change log and one patch per substantive change requirement.=

>  Other subsystems look similar without the review requirement, some
> have very strict stylistic requirements (reverse christmas tree, one
> variable definition per line, etc).  As I said, the goal wouldn't be to=

>  beat up on the unusual requirements but to see if we could agree some
> global baselines that would at least make submission more uniform.

Thank you James for having brought this up. I agree that more
consistency for patch acceptance criteria would help. This would not
only help beginners but also long-time contributors who contribute to
multiple subsystems.

Bart.
