Return-Path: <grant.likely@secretlab.ca>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 57E5A947
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 12:15:56 +0000 (UTC)
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 84AAB20111
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 12:15:55 +0000 (UTC)
Received: by mail-ee0-f48.google.com with SMTP id e49so589005eek.21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 05:15:54 -0700 (PDT)
Sender: Grant Likely <glikely@secretlab.ca>
From: Grant Likely <grant.likely@secretlab.ca>
To: Jonathan Corbet <corbet@lwn.net>, Jason Cooper <jason@lakedaemon.net>
In-Reply-To: <20140511083729.211e9b5f@lwn.net>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<20140511083729.211e9b5f@lwn.net>
Date: Thu, 15 May 2014 13:15:46 +0100
Message-Id: <20140515121546.3A06AC40B0E@trevor.secretlab.ca>
Cc: Rob Herring <robh@kernel.org>,
	Linux ARM Kernel <linux-arm-kernel@lists.infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] ARM legacy board DT conversion
 finalization
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 11 May 2014 08:37:29 -0400, Jonathan Corbet <corbet@lwn.net> wrote:
> On Sat, 10 May 2014 23:00:09 -0400
> Jason Cooper <jason@lakedaemon.net> wrote:
> 
> > So, I'm proposing a session where each sub-arch gives a brief run-down
> > of the status of the legacy board conversion, and wraps up with a todo
> > list.  After all of the sub-arches have given their status (5 - 10
> > minutes each?), we hash out helping each other with the final pieces.
> 
> This *really* looks like an ARM minisummit topic to me; hopefully one
> of those is in the works?

It does, doesn't it? I wouldn't want this as a main ksummit topic.

The problem with ARM minisummits these days is it is very easy to
devolve into a nothing-but-dt meeting with a bunch of people sitting
around looking either annoyed or bored. We weren't able to pull enough
topics together when we tried to do an ARM minisummit at the ELC.

Instead of a traditional ARM minisummit, perhaps we should do an ARM
platforms minisprint instead. Light on any kind of presentations, but
have the right people in the room to try and knock out some of the
legacy backlog (which is kind of what Jason described)

g.
