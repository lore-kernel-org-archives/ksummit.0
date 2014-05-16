Return-Path: <agrover@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B4F2D96D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 17:09:56 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5DBAC20206
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 17:09:56 +0000 (UTC)
Message-ID: <5376465F.2040508@redhat.com>
Date: Fri, 16 May 2014 10:09:51 -0700
From: Andy Grover <agrover@redhat.com>
MIME-Version: 1.0
To: Chris Mason <clm@fb.com>, NeilBrown <neilb@suse.de>,
	Dan Williams <dan.j.williams@gmail.com>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>	<20140516125611.06633446@notabene.brown>
	<537628ED.1020208@fb.com>
In-Reply-To: <537628ED.1020208@fb.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Dan J Williams <dan.j.williams@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
 Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/16/2014 08:04 AM, Chris Mason wrote:
> The biggest difference: there are no maintainers.  If I want to go
> change the calendar tool to fix a bug, I patch it, get someone else to
> sign off and push.
>
> All of which is my way of saying the maintainers (me included) are the
> biggest bottleneck.  There are a lot of reasons I think the maintainer
> model fits the kernel better, but at least for btrfs I'm trying to
> speed up the patch review process and use patchwork more effectively.

Dan and Chris, you talked about some technical differences and 
solutions, but here are some thoughts/questions I had just on the 
non-technical side of things for the ksummit:

* Big differences vs corporate development:
- no one can be told what to do by a common boss
- No assumption that co-contributors have a basic level of competence, 
so sign-offs may not mean much
- Co-contributors' area of development may have no- or negative value 
for maintainer (see "tinification" as an e.g.)
- Co-contributors may work for competing companies

* Forking the project, the traditional FOSS avenue for 
bad-maintainer/moving-too-slow is not realistically available for the 
kernel or per-subsystem, due to massive momentum.

* If the maintainer is unresponsive, what recourse does a submitter 
have? (Is this written down somewhere?) Is taking recourse actually 
culturally acceptable? How would the gone-around maintainer treat future 
submissions?

* At what point does it make sense to field a sub- or co-maintainer?

* Would more maintainer delegation help contributor recruitment and 
continued involvement? Versus, efficiency of highly-optimized patchflows 
by fewer maintainers.

* Do current maintainers feel they cannot delegate or relinquish 
maintainership? Maintainership-as-a-burden vs. 
maintainership-as-lead-developer vs. maintainership-as-a-career-goal.

* Are there other large-scale FOSS projects that may have development 
flows worth drawing lessons from?

Thanks -- Andy
