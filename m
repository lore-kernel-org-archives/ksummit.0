Return-Path: <jforbes@fedoraproject.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CBCFD996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 15:00:43 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 44D8B1FFF4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 15:00:43 +0000 (UTC)
Received: from int-mx11.intmail.prod.int.phx2.redhat.com
	(int-mx11.intmail.prod.int.phx2.redhat.com [10.5.11.24])
	by mx1.redhat.com (8.14.4/8.14.4) with ESMTP id s4NE53Dt031953
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK) for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 10:05:03 -0400
Received: from [192.168.1.164] (ovpn-113-158.phx2.redhat.com [10.3.113.158])
	by int-mx11.intmail.prod.int.phx2.redhat.com (8.14.4/8.14.4) with ESMTP
	id s4NE52gX003065 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 10:05:03 -0400
Message-ID: <1400853902.31124.5.camel@fedora64.linuxtx.org>
From: "Justin M. Forbes" <jforbes@fedoraproject.org>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 23 May 2014 09:05:02 -0500
In-Reply-To: <537F3551.2070104@hitachi.com>
References: <537F3551.2070104@hitachi.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2014-05-23 at 20:47 +0900, Masami Hiramatsu wrote:
> Hi,
> 
> As I discussed with Greg K.H. at LinuxCon Japan yesterday,
> I'd like to propose kernel testing standard as a separated topic.
> 
> Issue:
> There are many ways to test the kernel but it's neither well documented
> nor standardized/organized.
> 
> As you may know, testing kernel is important on each phase of kernel
> life-cycle. For example, even at the designing phase, actual test-case
> shows us what the new feature/design does, how is will work, and how
> to use it. This can improve the quality of the discussion.
> 
> Through the previous discussion I realized there are many different methods/
> tools/functions for testing kernel, LTP, trinity, tools/testing/selftest,
> in-kernel selftest etc. Each has good points and bad points.
> 
> So, I'd like to discuss how we can standardize them for each subsystem
> at this kernel summit.
> 
This would be a great discussion to have. Trying to build a regression
testing framework for kernel builds has been one of my big projects
recently.  Getting decent test coverage is kind of a nightmare at the
moment.

> My suggestion are,
> - Organizing existing in-tree kernel test frameworks (as "make test")
> - Documenting the standard testing method, including how to run,
>   how to add test-cases, and how to report.
> - Commenting standard testing for each subsystem, maybe by adding
>   UT: or TS: tags to MAINTAINERS, which describes the URL of
>   out-of-tree tests or the directory of the selftest.
> 
> Note that I don't tend to change the ways to test for subsystems which
> already have own tests, but organize it for who wants to get involved in
> and/or to evaluate it. :-)
> 
All good suggestions. As nice as it would be if tests were in tree, this
might be unmanageable. But even out of tree tests could be automatically
brought in provided they are listed somewhere in tree.  Ideally you
would be able to "make tests" and get all in tree tests run, or "make
alltests" and have it grab/build/run out of tree tests with git urls as
well. 

> I think we can strongly request developers to add test-cases for new features
> if we standardize the testing method.

Not just new features, bug fixes as well. Though writing a test can
sometimes be more difficult than the actual bug fix.  Without some sort
of framework, it is harder to ask for developer participation. We need a
framework that makes it easy.

> Suggested participants: greg k.h., Li Zefan, test-tool maintainers and
>                        subsystem maintainers.
I would love to be a part of this discussion, and creating a working
solution.

Justin
