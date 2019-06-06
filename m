Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1F010CDF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jun 2019 15:48:45 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B7A1B34F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jun 2019 15:48:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 12CF48EE134
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jun 2019 08:48:44 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id rTbIAWlgOsrG
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jun 2019 08:48:43 -0700 (PDT)
Received: from [192.168.140.111] (bzq-164-168-31-206.red.bezeqint.net
	[31.168.164.206])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id A893C8EE0FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jun 2019 08:48:41 -0700 (PDT)
Message-ID: <1559836116.15946.27.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 06 Jun 2019 18:48:36 +0300
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
	Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

This is probably best done as two separate topics

1) Pull network: The pull depth is effectively how many pulls your tree
does before it goes to Linus, so pull depth 0 is sent straight to
Linus, pull depth 1 is sent to a maintainer who sends to Linus and so
on.  We've previously spent time discussing how increasing the pull
depth of the network would reduce the amount of time Linus spends
handling pull requests.  However, in the areas I play, like security,
we seem to be moving in the opposite direction (encouraging people to
go from pull depth 1 to pull depth 0).  If we're deciding to move to a
flat tree model, where everything is depth 0, that's fine, I just think
we could do with making a formal decision on it so we don't waste
energy encouraging greater tree depth.

2) Patch Acceptance Consistency: At the moment, we have very different
acceptance criteria for patches into the various maintainer trees. 
Some of these differences are due to deeply held stylistic beliefs, but
some could be more streamlined to give a more consistent experience to
beginners who end up doing batch fixes which cross trees and end up
more confused than anything else.  I'm not proposing to try and unify
our entire submission process, because that would never fly, but I was
thinking we could get a few sample maintainer trees to give their
criteria and then see if we could get any streamlining.  For instance,
SCSI has a fairly weak "match the current driver" style requirement, a
reasonably strong get someone else to review it requirement and the
usual good change log and one patch per substantive change requirement.
 Other subsystems look similar without the review requirement, some
have very strict stylistic requirements (reverse christmas tree, one
variable definition per line, etc).  As I said, the goal wouldn't be to
 beat up on the unusual requirements but to see if we could agree some
global baselines that would at least make submission more uniform.

James
