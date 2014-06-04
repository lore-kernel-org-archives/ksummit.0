Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6EF19A83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  4 Jun 2014 16:52:28 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D82982022D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  4 Jun 2014 16:52:27 +0000 (UTC)
Date: Wed, 4 Jun 2014 12:52:24 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <20140604165224.GA3127@thunk.org>
References: <20140604130646.GA25092@thunk.org> <538F46CA.70303@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <538F46CA.70303@infradead.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] If you are using gmail,
	check your spam folders
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jun 04, 2014 at 09:18:18AM -0700, Randy Dunlap wrote:
> 
> I often get rejects from gmail when I reply to email and one of the
> Cc:s is torvalds@, akpm@, or gregkh@  linux-foundation.org (which is
> using gmail).  It's all bogus AFAIK.  It's just Linux patch-related stuff.

Are you getting outright rejects, or is it ending up in Linus's spam
folder?  (Which has happened to me with a PULL request, which is why I
set up DKIM....)

In any case, if you get outright rejects, if you can save the full
e-mail (including headers) in a file, and then put it somewhere I can
download it, I'd much appreciate it.  (I've been having false
positives with MIT's Brightmail anti-spam service, so this problem is,
alas, not unique to Gmail.  So if you want to send me samples which
Gmail has rejected as spam, it's better to put it up on a web or ftp
server, and send me the URL.)

If it ends up in a gmail spam folder, it's best if you can get the
recipient to send me the full e-mail, complete with headers.

The reason why the headers are useful is because we can use these to
hopefully send complaints to the anti-SPAM folks and ask them what's
up with their algorithms.  For example, this was bounced by Gmail
despite the SPF and DKIM pass indications:

Received: from imap.thunk.org (imap.thunk.org. [2600:3c02::f03c:91ff:fe96:be03])
        by mx.google.com with ESMTPS id m48si15663526yhl.39.2014.05.31.13.16.22
        for <gregkh@linuxfoundation.org>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 31 May 2014 13:16:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of tytso@thunk.org designates 2600:3c02::f03c:91ff:fe96:be03 as permitted sender) client-ip=2600:3c02::f03c:91ff:fe96:be03;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of tytso@thunk.org designates 2600:3c02::f03c:91ff:fe96:be03 as permitted sender) smtp.mail=tytso@thunk.org;
       dkim=pass header.i=@thunk.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=thunk.org; s=ef5046eb;
	h=Date:Message-Id:To:Reply-To:Subject:From; bh=EYhTkkgyOXFA9DVUyhv3DV8emZh08SW9NRYmxy6b18s=;
	b=XWykrAMWFJTkNFUb4AW2VrdrBu+45vDXNJQqcpADZcb8waUpl02GGfpFQ1qqJ7x6h4kHuB04ah3/7QcINWs1GEByE2Hy35ID/cTTlUtFg9pOEjqbIgoWnfeoKRbp6ZpdxZlK0o6McJcmIJOJN492fVk1UGXnKWR//r5X6RDbuNM=;

      	  	     	   	       	       - Ted
