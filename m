Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B23A4B1E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 23:23:50 +0000 (UTC)
Received: from out01.mta.xmission.com (out01.mta.xmission.com [166.70.13.231])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4E1C934F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 23:23:50 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: James Bottomley <James.Bottomley@HansenPartnership.com>
References: <1539202053.12644.8.camel@HansenPartnership.com>
Date: Wed, 10 Oct 2018 18:23:24 -0500
In-Reply-To: <1539202053.12644.8.camel@HansenPartnership.com> (James
	Bottomley's message of "Wed, 10 Oct 2018 13:07:33 -0700")
Message-ID: <87efcxtmhf.fsf@xmission.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH v2 0/3] code of conduct fixes
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

James Bottomley <James.Bottomley@HansenPartnership.com> writes:

> Resend to show accumulated tags and also to add a third patch listing
> the TAB as the reporting point as a few people seem to want.  If it
> gets the same level of support, I'll send it in with the other two.


There is also:

> Our Responsibilities
> ====================
> 
> Maintainers are responsible for clarifying the standards of acceptable behavior
> and are expected to take appropriate and fair corrective action in response to
> any instances of unacceptable behavior.
> 
> Maintainers have the right and responsibility to remove, edit, or reject
> comments, commits, code, wiki edits, issues, and other contributions that are
> not aligned to this Code of Conduct, or to ban temporarily or permanently any
> contributor for other behaviors that they deem inappropriate, threatening,
> offensive, or harmful.

Which is very problematic.
a) In append only logs like git we can not edit history.
   Making it a mainters responsibility to edit the history, to do the
   impossible is a problem.

b) There are no responsibilities of for people who are not Maintainers.
   That is another problem.

c) The entire tone of the reponsibilities section is out of line with a
   community where there are no enforcement powers only the power to
   accept or not accept a patch.  Only the power to persuade not to
   enforce.

Overall in the discussions I have heard people talking about persuading,
educating, and not feeding trolls.   Nowhere have I heard people talking
about policing the community which I understand that responsiblity
section to be talking about.

Increasingly I am getting the feeling that this document does not the
linux development community.  Perhaps a revert and trying to come up
with better language from scratch would be better.

I don't know how to rephrase that reponsibility section but if we don't
go with the revert something looks like it need sot be done there.

Eric
