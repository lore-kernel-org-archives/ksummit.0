Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3A70F90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Nov 2015 17:02:38 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id DF5BC184
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Nov 2015 17:02:37 +0000 (UTC)
Message-ID: <1446570155.6440.12.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Tue, 03 Nov 2015 09:02:35 -0800
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] Stable and delay backports
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I'm still not clear, even after all the discussion, whether there's any
value left to annotating the cc to stable with a delay backport.  I'm
getting ready to post a fix to our block size calculations which make
them completely accurate instead of within 5% like they were before.
Technically this is a bug fix because people get distressed even over
apparently losing 5% of their space, so it will have to be backported,
but the algorithm has increased in complexity, so it would be better to
incubate in main line for a while to make sure there are no further
complaints.

So the question: I think I heard Greg say you're automatically delaying
merge window backports anyway, so there's no real need to add a separate
delay tag, or is there?

James
