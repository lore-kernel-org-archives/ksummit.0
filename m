Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=18.9.28.11
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792612682;
	b=4hDIt52S2Al1oJbooDFCihJ3UZkL7XO/H5gliIjz0eBUzhyAU0DqGIsRETiyKo5oJ23G
	 zE3qpw6deAOU6n9jyl49HoxaWQWPMnKs2TJqK2HxD7uPb4MOZFN68pikbHBGvLo4mNNdT
	 cs64Gx6b8UgTWp5ye8n3MUYKbavPhbF9nbuLv5gEgSJ7ACrxXacThLhowUPxn6eGg7riP
	 mcVd714CgwG/1o7CKqS8kSi0P0Ssf77KO7m6SC3OBFG3gYkOnlazozAsOwwePBmaqjaTv
	 TodCmNMdqxBKf+jfBZ+Xsk9MtvRPnNGFIBK+zNXcreeeRneOeyGZQIL7Ib69zVWBufg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792612682;
	h=DMARC-Filter:Received:DKIM-Signature:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=d+sCJb8edvh2+CVS5FtxigTJ8TPBinywELs5NiGpbF8=;
	b=IFeXkZ1M0qdg5/rDaoRcTGZERsKNk7cX/p21zf9+whV7eG452o5gNmNq9N/w4b1+dvOV
	 DlFb6SIxVHwXaOaHXdAECt3fTfx3bv2x1aZshlaZSkw9+Ok8dy2My9GvED5IMVJXXSdZU
	 6hMy9emmmZxyvf8UmXr3dcLF5pUHJ4nf6yy+3QuDUJZ+E8oRXLPteiHgplyaWd7lGx//q
	 IcUIatL3dJdxZ75Mk0ZwFF882Rs020HyXvTlB+IoVTiT2RaN8SurQGaDil+Ui6Yep8efc
	 GZ6f4QtIa/M5wMl6ERVoKc+Xe0et+d7jf4ZsmK/FfokDXO/vERQTzLMBTKi9hnY95Mg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=mit.edu;
	spf=pass smtp.mailfrom=mit.edu;
	dkim=pass header.d=mit.edu header.i=@mit.edu header.a=rsa-sha256 header.s=outgoing header.b=KPrmy2sy;
	arc=none smtp.remote-ip=18.9.28.11
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4706B606A31D
	for <ksummit@lists.linux.dev>; Wed, 21 Oct 2026 19:58:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 4706B606A31D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=mit.edu header.i=@mit.edu header.a=rsa-sha256 header.s=outgoing header.b=KPrmy2sy
Received: from macsyma.thunk.org (pool-173-48-113-115.bstnma.fios.verizon.net [173.48.113.115])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 69LJvfWK025571
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Oct 2026 15:57:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1792612664; bh=d+sCJb8edvh2+CVS5FtxigTJ8TPBinywELs5NiGpbF8=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=KPrmy2syrRZGRETwSAuKjpTB94ypcrD543uXsYoEXwSP3iNmKufTgwNfVOfme6ufq
	 D6mgnILpBVKoycS2U7A7BWnhQcM9cjH2/aV0ynXDQilku2UueBNSFNKkPs+AmE7Ff2
	 BJ9uM0wP6ggjcYsFwp3QbP6gAKqSXXem5HemeWTYvH1rgmN0wGVO50m/cPHSrjh3k0
	 2G4pZwnBewPzzVal/TuNzxFyEGGftqb4rDSYxhngotKDazuaGjy6AtobVFFlJjwln5
	 MixfWdDWbd9vD259RTaNdN0DLFG/PqHOuMlsWWr2exQ4/QcejAmXpWk5LvDlSKfjX5
	 FmFGbaM6oP+ww==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id BFD5821EAAEB; Wed, 21 Oct 2026 15:56:40 -0400 (EDT)
Date: Wed, 21 Oct 2026 15:56:40 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Mark Brown <broonie@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
        Bart Van Assche <bvanassche@acm.org>, johannes.goede@oss.qualcomm.com,
        Jiri Kosina <jikos@kernel.org>, ksummit@lists.linux.dev,
        sashiko@lists.linux.dev
Subject: Re: Patch pre-submission to Sashiko
Message-ID: <atkX3WwwV8XhMRiM@mit.edu>
References: <atO3pCuUxI950ftN@mit.edu>
 <3354ebda-5158-489b-a577-5cb10e5d5fb0@oss.qualcomm.com>
 <atZ4J86j7CXF82HX@mit.edu>
 <2fef166e-088d-4ffe-8d0a-0143aebc1b26@acm.org>
 <ate8oESqneK-3sQJ@mit.edu>
 <7e473af8-2f7a-4a36-a926-e756873c9c52@linuxfoundation.org>
 <atic3bbDeyJI6MJs@sirena.co.uk>
 <atjlUoEmTagZjrYI@mit.edu>
 <atjpS__OwjZ-Q_Fh@sirena.org.uk>
 <20261021114524.4c2ea2a31a9d527b78e78768@linux-foundation.org>
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Post: <mailto:ksummit@lists.linux.dev>
List-Help: <mailto:ksummit+help@lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ksummit+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261021114524.4c2ea2a31a9d527b78e78768@linux-foundation.org>

On Wed, Oct 21, 2026 at 11:45:24AM -0500, Andrew Morton wrote:
> 
> If someone's fixing something I don't see much value in
> retaining/maintaining a test case for something we've already fixed. 
> This is considered good engineering practice but why bother - we fixed
> it!  Move on.

It's considered good engineering practice because regularly running
the test allows regresssions to be detected, and by increasing test
coverage, it makes life easier to feel confident that a future code
change, or rebase, is ultimately correct.

Of course, you need to do the cost/benefit tradeoff.  If the test
takes a very long time to run, or if maintaining it requires a huge
amount of code outside of the test, then it could be that the benefits
aren't worth the on-going costs of keeping the test around.

This is one of the reasons why I'm a big fan of unit testing.  The
unit tests tend to run much more quickly than integration-style tests.

     	   	       	    	 - Ted
