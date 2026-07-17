Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C745F2DB794
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 02:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784255283; cv=none; b=sAkGWcoFE5WIoBNBYClpQTQ3isiSbHUtJSHzwur3YUKlL3W/8cKU5RuLT74/GeCZB/XGN/TAcHuoHzL300CGITu+G61+iyPhA7Wirq3z5xb9wejpw3ymLU/526TLNRvs7rylZ+QMXohe7eW4RDsXH00IfyfP696wVj8AycKP0s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784255283; c=relaxed/simple;
	bh=hEdc/c8ymOhlKVwI4ODrQi7p9JF38n+qBaaGLvPv6RM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DMeRdlMuGezeIq3+z4GhjORAJgA5ZnlOEQhELjOlWb1JRypVXv/9AL7qmKHB+DhPpeXYIksQkUBHfZToxTcb3GIKZ63SIYqF3ZYeAuOXteDaPcuUmPge8UAOfLKy6JlBHJWLbbmZXuIElgIbvSjsgUi7O9IJsDsm9uCHl1NfQ6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=jSFQas1q; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="jSFQas1q"
Received: from macsyma.thunk.org ([151.240.45.27])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 66H2RsEQ000828
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Jul 2026 22:27:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1784255276; bh=yQG5fn8u+h0tJQAvvmHUJexbO7DsNSmLhHLTELTH/Mc=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=jSFQas1qOyW1hH+sMgpUwBnUs1ilkG/5drTkQ59BgZ9FIpl77Bhd3eCf6hsECPqQV
	 G69y3b0G7RsRL2xL7wE322jd/AIgf7FisD1H4KowWXtgvbSiU+gTWtSK2D7A87EbEW
	 B+RAEt6vAXmL704tbO7vGORLhyWoNRtccx+rV33SFpKsW2Mj3CcDOUQo8Ny9OlKg76
	 dZmHUfUYBN29NJZx8y+f2RAte/mXp/6CBREP/xsuOnb3j7Dywl5YgqCo9Ag4G6jn8+
	 bSqrbcfJmPGKuhFDVHXBNBJPmVRcxzSNNyq6QoqBlj5iEs7crvU07N99u4NKIjuxNw
	 X7rfuQBKpKzUw==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 732F8A5ECF4; Thu, 16 Jul 2026 22:27:54 -0400 (EDT)
Date: Thu, 16 Jul 2026 22:27:54 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>,
        ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <almM2epxzBmN0Nb0@mit.edu>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
 <20260716215342.30e44c2f@foz.lan>
 <allL7jndw6R-3_8S@mit.edu>
 <20260717025812.2397d792@foz.lan>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260717025812.2397d792@foz.lan>

On Fri, Jul 17, 2026 at 02:58:12AM -0500, Mauro Carvalho Chehab wrote:
> 
> The main point is: do we really need 671B parameters? Those models
> speak a lot of different languages, have medical databases, and a lot
> of other random knowledge that are useless for kernel development.

Fair; but I do think we need to fine-tune it with a lot LKML text so
that it has the knowledge that we actually need for kernel development
before I'd trust the smaller models.

> I've been playing for a while with qwen 3.6 with 24KB context size,
> 36B parameters (3B activated), 4bits kv quantization and it does produce
> some decent results. The main limitation is the context size: it is
> probably not big enough to test big files (*)

I've been playing with qwen3-next with 256k context context size, 80B
parameters (3B activated), with 8bit quantization, but I haven't been
willing to trust it with generating kernel code.  I have experimenting
to see how it compares with Gemini 3.1 when creating a python script
to send e-mail[1] or creating a bash completion script[2] for my
fstests test appliance.

[1] https://github.com/tytso/xfstests-bld/commit/dfadb2014da446ecb967de51904ee531f7be8bd5
[2] https://github.com/tytso/xfstests-bld/commit/dfadb2014da446ecb967de51904ee531f7be8bd5

However, from Roman tells me, Sashiko is running muliple LLM passes
using a frontier model for each commit review.  So what Sashiko does
is quite a bit more complicated than a series of prompts such as:

   Create a python program which submits an e-mail message using the
   Submission Port (port 587), It should enable encryption using
   STARTTLS and it should obtain the username and password from a
   config.ini file.  Model the python program using the send-mail.py
   in the sandbox directory.  It should support the same command-line
   options but instead of sending the e-mail using sendgrid, it should
   send the e-mail using the Submission protocol.

   Please add pydoc documentation to send-mail-smtp.py.

   Please enhance the program you just created (send-mail-smtp.py) to
   support specifying a path to a certificate file in the
   configuration file in case the user doesn't want to use the system
   provided top-level trusted certificates.

   Please add support for a configuration file parameter which
   specifies whether TLS should be mandatory, optional, or disabled.
   Update the pydoc documentation as necessary.

   Please integrate the functionality found in send-mail.py into
   send-mail-smtp.py.  Instead of getting the Sendgrid API key from an
   environment variable, change it to obtain the Sendgrid API key from
   the configuration file.  If the Sendgrid API key is specified, use
   sendgrid instead of the SMTP submission protocol.  Update the pydoc
   documentation strings.

.... which does work pretty well even on less capable models that I
can run locally.

I guess we could try running Sashiko using ollama-mlx on a Macbook
with 128GB, and see how it works, but my assumption is that the answer
is "not well" --- which is why I really want to look at fine-tuning
one of these smaller models first.

Cheers,

						- Ted
