Return-Path: <jwboyer@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D747ABBF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 15:50:31 +0000 (UTC)
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 613A2136
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 15:50:31 +0000 (UTC)
Received: by igrv9 with SMTP id v9so15675397igr.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 08:50:30 -0700 (PDT)
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <20150710143832.GU23515@io.lakedaemon.net>
References: <20150710143832.GU23515@io.lakedaemon.net>
Date: Fri, 10 Jul 2015 11:50:30 -0400
Message-ID: <CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
To: Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] dev/maintainer workflow security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 10, 2015 at 10:38 AM, Jason Cooper <jason@lakedaemon.net> wrote:
> All,
>
> This is a topic of interest to me that I think would best benefit from a
> conference room discussion.
>
> Items to discuss:
>
>  - Survey the room on workflows and security posture for kernel work
>  - Discussion of threat models, attack vectors
>  - Discuss mitigation methods, tools and techniques
>  - Identify missing tools or features of tools
>
> The intent is to discuss end point security with regards to protecting
> the kernel source tree.

Interesting.  Though I think it needs a broader audience to be honest.
It would be far easier to use distros as an attack vector than to try
subverting the upstream source code.  This might be a good topic for
something like Linux Plumbers.

josh
