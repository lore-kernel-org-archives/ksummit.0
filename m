Return-Path: <prvs=0204444a2c=mjg59@cavan.codon.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E2B4CB07
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 18:03:19 +0000 (UTC)
Received: from cavan.codon.org.uk (cavan.codon.org.uk [93.93.128.6])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 48C261FAA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 18:03:19 +0000 (UTC)
Received: from mjg59 by cavan.codon.org.uk with local (Exim 4.80)
	(envelope-from <mjg59@cavan.codon.org.uk>) id 1Wi6BX-0000cz-4J
	for ksummit-discuss@lists.linuxfoundation.org;
	Wed, 07 May 2014 19:03:15 +0100
Date: Wed, 7 May 2014 19:03:15 +0100
From: Matthew Garrett <mjg59@srcf.ucam.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20140507180315.GA926@srcf.ucam.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss] [CORE TOPIC] Trusted kernel patchset
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(Posting as core rather than tech because I suspect this is more 
political than technical at this point)

Most major distributions ship these. There is strong demand from Google, 
who want to use them in a use-case that has nothing to do with UEFI 
Secure Boot. Making a distinction between root and kernel security is a 
necessary part of securing a boot chain[1].

Yet, after apparently gaining at least a rough consensus at LPC last 
year, we're now at the point where there's yet another suggestion for 
how to rewrite them but absolutely nobody showing any signs of being 
willing to do that work or any agreement from anyone in the security 
community that entirely reworking capabilities is either practical or 
desirable.

It'd be nice to have this done before August, but given that all 
previous attempts to actually get it unblocked on mailing lists have 
failed maybe we should talk about it in person. Again.

[1] See: the large number of people running modified kernels on their 
Android devices by using the signed vendor kernel to kexec them. Great 
for freedom, bad for the guarantees you were attempting to provide 
regarding trusted code

-- 
Matthew Garrett | mjg59@srcf.ucam.org
