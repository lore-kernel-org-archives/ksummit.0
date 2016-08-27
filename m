Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7AE52258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 20:57:53 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0192.hostedemail.com
	[216.40.44.192])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2DB2F16D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 20:57:53 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 9A07C28EF91
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 20:40:57 +0000 (UTC)
Message-ID: <1472330452.26978.23.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Sasha Levin <levinsasha928@gmail.com>, alexander.levin@verizon.com, Greg
	KH <gregkh@linuxfoundation.org>
Date: Sat, 27 Aug 2016 13:40:52 -0700
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: LKML <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 26, 2016 at 01:26:35PM +0200, Greg KH wrote:
> On Fri, Aug 26, 2016 at 12:46:51AM -0400, Levin, Alexander wrote:
>>    - Making checkpatch check for (some) of the stable kernel rules
>>    (and possibly recommend adding the stable@ tag in certain cases?).
>>      - Depends on: making checkpatch sane again.>This sounds interesting.  What do you mean by "sane"?

Sasha, can you expand your thoughts here please?

Most all of the trivial spacing stuff can easily be
ignored either by a human determining what's important
or by using command line options like --ignore=spacing
