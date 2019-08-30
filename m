Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BAC7A6067
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 13:58:28 +0000 (UTC)
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 556C87DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 13:58:28 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id t3so14043898ioj.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 06:58:28 -0700 (PDT)
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	ksummit-discuss@lists.linuxfoundation.org
References: <20190830031720.GA7490@mit.edu>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <757b2868-5ac6-5da7-a064-0b8393e1aa41@linuxfoundation.org>
Date: Fri, 30 Aug 2019 07:58:25 -0600
MIME-Version: 1.0
In-Reply-To: <20190830031720.GA7490@mit.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 8/29/19 9:17 PM, Theodore Y. Ts'o wrote:
> The following topics have been proposed for the maintainer's summit on
> this list:
> 
> * Squashing Bugs!   (Shuah Kahn)
>      How do we deal with the high volume of bugs reported (especially
>      by automated systems like syzbot)
> 
> * Depth of the "pull network"	     (James Bottomley)
>      Should we be encouraging more people to send pull requests
>      to maintainers and sub-maintainers (and sub-sub-maintainers),
>      versus a more "flat tree" model where people send pull requests
>      directly to Linus?
> 
> * Stable Kernel Process Automation and Improvement (Sasha Levin)
>      What remaining pain points are there?  How can we make it better?
> 
> * Talking in Code or talking Code (Shuah Kahn)
>      This was a suggestion about a specific LPC proposal; the core
>      suggestion was talkinig about our e-mail conversation styles
>      on the mailing list.   We have a similar KS track talk:
>      "The list is our process: An analysis of the kernel's
>      email-based development process"

Let's drop this topic. I asked the researcher to focus on clarity of
communication for this talk. Researcher has been looking for tools
that can help analyze clarity of communication in our emails, and
hasn't been successful. More like the analysis too noisy to make
sense of it. As a result, there hasn't been much progress in the
research in the clarity of communication.

> 
> * Patch version changes in commit logs?   (Shuah Kahn)
>      How to make information about how commit has changed while being
>      developed.  (A solution which has already been adopted by some
>      maintainers is to use the Link: tag in the commit discussion).
>      There have been a more recent discussion in this past week under
>      subject line "Allowing something Change-Id (or something like it)
>      in kernel commits".
>   

Looks like this has been resolved with adapting the Link: tag. I would
say we can summarize this and provide a link to the script to share
more easily than digging through the ksummit-discuss threads.

> Some of these topics have already been mostly resolved via e-mail
> discussion.  Which topics do people deserves more discussion?
> 
> Are there some additional topics that you'd like to suggest that we
> discuss at the maintainer's summit?
> 
> 					- Ted
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
