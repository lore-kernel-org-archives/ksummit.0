Return-Path: <roland.dreier@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5CC00A83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:34:07 +0000 (UTC)
Received: from mail-qc0-f177.google.com (mail-qc0-f177.google.com
	[209.85.216.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F1BFF2020E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:34:06 +0000 (UTC)
Received: by mail-qc0-f177.google.com with SMTP id i17so5135162qcy.22
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 May 2014 13:34:06 -0700 (PDT)
MIME-Version: 1.0
Sender: roland.dreier@gmail.com
In-Reply-To: <20140509170709.GA9747@redhat.com>
References: <20140509170709.GA9747@redhat.com>
From: Roland Dreier <roland@kernel.org>
Date: Fri, 9 May 2014 13:33:46 -0700
Message-ID: <CAG4TOxONfcd=c+78yxUVj4iOQ_n7+RShPeir9HWUQ_zGDWYJig@mail.gmail.com>
To: Dave Jones <davej@redhat.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 9, 2014 at 10:07 AM, Dave Jones <davej@redhat.com> wrote:
> Last year I had been doing the coverity scans on an almost daily basis
> for 2-3 months.  Now that we're a year in, I'd like to share some
> results, and show some of the more common trends and bug patterns that
> seem to pop up.

This probably doesn't add too much to the discussion, but as a
subsystem maintainer, I like having easy-to-run analysis tools (or
easily available scan results like coverity).  It seems to lead to
interesting patches from people who aren't really interested in the
subsystem but just trawl through scan results.

It's pretty cool getting fixes for subtle (but in retrospect obvious)
bugs from people who say "compile tested only because I have no
hardware."

 - R.
