Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A02761C9A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jun 2019 14:54:08 +0000 (UTC)
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2D12976D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jun 2019 14:54:07 +0000 (UTC)
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id ADD132F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jun 2019 14:54:06 +0000 (UTC)
Date: Wed, 12 Jun 2019 08:54:05 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190612085405.6045d95d@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
Subject: [Ksummit-discuss] [TECH TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

What could be more fun than talking about kernel documentation?  Things we
could get into:

 - The state of the RST transition, what remains to be done, whether it's
   all just useless churn that makes the documentation worse, etc.

 - Things we'd like to improve in the documentation toolchain.

 - Overall organization of Documentation/ and moving docs when the need
   arises.  It seems I end up fighting about this more than just about
   anything else, but I think it's important to organize our docs for the
   convenience of the people using them.

 - The ultimate vision for kernel docs (for now).  RST conversion and
   imposing some organization are important, but they will not,
   themselves, give us a coherent set of documentation.  What can we do to
   have documentation that is useful, current, and maintainable, rather
   than the dusty attic we have now?

jon
