Return-Path: <labbott@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6546BBC2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 23 Sep 2018 13:16:04 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9602A76C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 23 Sep 2018 13:16:03 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id f21-v6so7091244wmc.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 23 Sep 2018 06:16:03 -0700 (PDT)
To: Dan Carpenter <dan.carpenter@oracle.com>, James Morris <jmorris@namei.org>
References: <alpine.LRH.2.21.1809220709090.19240@namei.org>
	<20180922131640.pxjwukrckggxtg3s@mwanda>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <5a6f441f-89ae-454b-3689-2e5e605988ce@redhat.com>
Date: Sun, 23 Sep 2018 06:15:59 -0700
MIME-Version: 1.0
In-Reply-To: <20180922131640.pxjwukrckggxtg3s@mwanda>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/22/2018 06:16 AM, Dan Carpenter wrote:
> Sort of related to this.  I think we should have a public email list to
> discuss potential security problems.  We've actually talked about making
> the security@kernel.org list public at some point when people started
> flooding it with static checker warnings about potential SELinux missing
> checks.
> 
> The downsides are 1) Maintainers will be annoyed.  They don't want me or
> anyone to forward them static checker output (they are polite about
> this).  But they also want to be the first to know about real bugs found
> by static analysis.  These are conflicting and impossible desires...  2)
> Script kiddies will follow the list and learn about bugs earlier.  I
> don't see this as a huge issue if we restricted it to driver specific
> bugs.
> 
> Security work is lonely.  Everyone expects *all* the bugs to be fixed
> perfectly and in absolute secrecy.
> 
> Every other special interest group has a mailing list linux in
> automotive or small kernels.  Security would be the same.  Also I
> sometimes see obviously bad security fixes.  There is one integer
> overflow fixes which I have re-fixed three times.  Older me is able to
> review other people's integer overflow fixes and spot bugs.  It would be
> good to have a way to share that knowledge.
> 
> Most maintainers do not want to deal with more than a 5% false positive
> rate in static checker warnings.  I, on the other hand, regularly deal
> with a 95% false positive checks and there are probably other people
> like me who can spend a whole day looking and feel happy to find one
> bug.
> 

I think there's two different categories here: there's a general
security interest group and security response. security@kernel.org
is supposed to be security response for coordination. kernel-hardening
kind of fills the security interest list but maybe it's still separate.
I do support having more discussion of security bugs publicly while
also having a discussion about security response since we get a non-zero
number of reports that requires more careful handling.

Thanks,
Laura
