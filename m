Return-Path: <bhelgaas@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 82458A83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:38:13 +0000 (UTC)
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2B2992037C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:38:13 +0000 (UTC)
Received: by mail-ie0-f182.google.com with SMTP id tp5so4428829ieb.27
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 May 2014 10:38:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140509170709.GA9747@redhat.com>
References: <20140509170709.GA9747@redhat.com>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Fri, 9 May 2014 11:37:52 -0600
Message-ID: <CAErSpo6LPLOWXQGrQbe9xKW+aB-w9MJ7UAvL9zAMNSTNyg7NcA@mail.gmail.com>
To: Dave Jones <davej@redhat.com>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 9, 2014 at 11:07 AM, Dave Jones <davej@redhat.com> wrote:
> I gave a lightning talk on this last year. This year I have a bit more data
> so could probably fill a whole session.
>
> Last year I had been doing the coverity scans on an almost daily basis
> for 2-3 months.  Now that we're a year in, I'd like to share some
> results, and show some of the more common trends and bug patterns that
> seem to pop up.
>
> [ spoiler: For the most part, it's all pretty positive, but we still suck ]
>
> It would also be good to have some more discussion about other tools
> we could be making more use of.  (Nomination: Dan Carpenter for smatch).

I'm interested in hearing about this, too.  I've spent a fair amount
of time digging through coverity scans and it's been quite useful.
But it's still a hassle and there's lots of room for improvement in
terms of making coverity/smatch/autobuilder/etc. results more
accessible and usable.

Bjorn
