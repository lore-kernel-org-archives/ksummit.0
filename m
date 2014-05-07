Return-Path: <mtk.manpages@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B0FB4B09
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 17:49:33 +0000 (UTC)
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 39F922027D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 17:49:32 +0000 (UTC)
Received: by mail-ee0-f45.google.com with SMTP id d49so988839eek.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 07 May 2014 10:49:31 -0700 (PDT)
Message-ID: <5369D243.6030305@gmail.com>
Date: Wed, 07 May 2014 08:27:15 +0200
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
MIME-Version: 1.0
To: Greg KH <greg@kroah.com>, Andy Lutomirski <luto@amacapital.net>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506190024.GA1004@kroah.com>
In-Reply-To: <20140506190024.GA1004@kroah.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/06/2014 09:00 PM, Greg KH wrote:

> We do have linux-api, which should be cc:ed for new api additions.  But
> it usually isn't :(

As I've just said in reply to Josh Triplett's MAINTAINERS patch, I think 
they key here is persistence. Every time you see something that changes 
the API/ABI, ask the submitter to CC linux-api (and CC linux-api on 
that request). I try to do this now and then, but I catch just a few
drops from the LKML firehose. If enough people do this often enough,
I think there's a chance to bring this discipline to the culture.

CCing linux-api@ really would help a lot of people:
https://www.kernel.org/doc/man-pages/linux-api-ml.html

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
