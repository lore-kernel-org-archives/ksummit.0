Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8F46E9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 13:03:24 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 59DB2189
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 13:03:23 +0000 (UTC)
Date: Sat, 1 Aug 2015 15:03:21 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: Dan Williams <dan.j.williams@intel.com>
In-Reply-To: <CAPcyv4jjTmF3MFY2LAjvLx1Ay7TijcC7tL2gnfmORpURXOyGzw@mail.gmail.com>
Message-ID: <alpine.LNX.2.00.1508011501360.925@pobox.suse.cz>
References: <55BAE39F.9060705@oracle.com>
	<CAErSpo52d5DEp_KuVoQXm4DsVakemDboLUysy6_vHL6+-xgRJw@mail.gmail.com>
	<20150731165915.GA4995@roeck-us.net>
	<20150731170825.GA2721@kroah.com>
	<20150731171500.GC4995@roeck-us.net>
	<CAErSpo5ZDAAJVo7Lm6e2rg3sqvrtsTHRaV9nBDy+SDVMjy8MKw@mail.gmail.com>
	<20150731181245.GA5969@kroah.com>
	<20150731181757.GA8747@codemonkey.org.uk>
	<20150731182256.GA6508@kroah.com>
	<CAPcyv4jjTmF3MFY2LAjvLx1Ay7TijcC7tL2gnfmORpURXOyGzw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Sasha Levin <sasha.levin@oracle.com>
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 31 Jul 2015, Dan Williams wrote:

> One more thought on this tangent... I've had a task stuck at the bottom 
> of my backlog to look at extending dynamic_debug call sites to 
> optionally be tracepoints so that you could feasibly have debug on all 
> the time with less run time impact. 

Making dynamic debug use jump labels should be enough to achieve this.

That used to actually be the case, but got reverted later, as it didn't 
properly handle gccs that didn't support asm goto (see 2d75af2f2a7).

Once that is fixed to be more general and handle older gccs as well, your 
task is done :)

-- 
Jiri Kosina
SUSE Labs
