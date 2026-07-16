Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9135D222590
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 21:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.121.94.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784237848; cv=none; b=M873YnJDx4ivIvdLIOgxJ0ByZQ7cIF2A4kivoLK2Yh9fqit9VBtOgOiEt1J/Dm0iVopfN2mk9b1IleVlDiKOmf1BXkT2gAFUAIhos0jHt7N8BckLa24bHMCpFzFjKPfM48bTNQvE0kEWAJNzTVRTAk+OG/2O3/Bvmzg4PZxAWkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784237848; c=relaxed/simple;
	bh=iq1CUfmfKSPsNQxwruqsbW7BHNK4FdhQlH75IBlSUfo=;
	h=Date:From:To:Message-ID:Subject:MIME-Version:Content-Type; b=A5BoLFtpfHqzC92pqiMlLbpQQOd9mAwYWvsbMP8u9AkfunbBw83UEoTARAeUgDKGs6voCkXahCDRn4DPu7zSsbFTmjVXPXp/WQ/ND1RwJGluHhN+u9vc4jdrvRbWsvLQPSiIk1Q1EgEsfbQ81RM5ejVEP0woGL9vhi4adY7ymP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xs4all.nl; spf=pass smtp.mailfrom=xs4all.nl; dkim=pass (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b=GU1cvQkj; arc=none smtp.client-ip=195.121.94.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xs4all.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xs4all.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b="GU1cvQkj"
X-KPN-MessageId: 8319c565-815e-11f1-a59f-005056994fde
Received: from mta.kpnmail.nl (unknown [10.31.161.191])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 8319c565-815e-11f1-a59f-005056994fde;
	Thu, 16 Jul 2026 23:37:15 +0200 (CEST)
Received: from mtaoutbound.kpnmail.nl (unknown [10.128.135.189])
	by mta.kpnmail.nl (Halon) with ESMTP
	id 830eae6e-815e-11f1-91c0-00505699891e;
	Thu, 16 Jul 2026 23:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xs4all.nl; s=xs4all01;
	h=content-type:mime-version:subject:message-id:to:from:date;
	bh=9SAuBWlffpQVhM5aC22O9boevb05AiLa4PuRwZd7htQ=;
	b=GU1cvQkjFZqYbvYEBoyUvcVN4u5TMaHo90jqYAk2zpUMQIwREs8nMco4AqD7P5C5G0rEkXagp1cs3
	 Zm8v5QFBd3c5yLA6DQGQZ735Eq7V/CgDRmz+Icnc61UaO9maJ1E9ce1/twPjNXCGhmI66IVGD60P9w
	 uMWVcTYnxR/MaPsvCPANkK29m/83cPuc1bWWgT3STEpli+zRRYm5z42qMGpew0dzmjAU40P03gAVMf
	 RzqM8KAzqJBUAQVVCXtX70FCs3fWS+uWI9BM/X1s0uaoc/gpOWU8Dn/Zhid5Q13J1vVMrxDPpsx7lN
	 IqUTr3dbNXpssrZPbdRbZ586RYyb3Hg==
X-KPN-MID: 33|uYV0SNcQJ+XNT+SMzSCEd4J/+SDCep9vIJqCo+eUhi23RGPVquSq7uzWfyEHEmg
 /04kWcR54qWTTr4u0Eq4YzY8w/37zy5xpfDJk9i+bLUs=
X-CMASSUN: 33|MDDhtr7aWKfUW8mrBrTSVxwliOsFAHs2mUOOwIPCaaVcwTjufmiRgHMbdYcIU3Y
 ptfTrwZuODWB5tI0MFahVHA==
X-KPN-VerifiedSender: Yes
Received: from cpxoxapps-mh07 (cpxoxapps-mh07.personalcloud.so.kpn.org [10.128.135.213])
	by mtaoutbound.kpnmail.nl (Halon) with ESMTPSA
	id 8304e9a5-815e-11f1-8edb-00505699eff2;
	Thu, 16 Jul 2026 23:37:15 +0200 (CEST)
Date: Thu, 16 Jul 2026 23:37:15 +0200 (CEST)
From: Jori Koolstra <jkoolstra@xs4all.nl>
To: "ksummit@lists.linux.dev" <ksummit@lists.linux.dev>
Message-ID: <1970142206.1318508.1784237835020@kpc.webmail.kpnmail.nl>
Subject: [MAINTAINERS SUMMIT] Revisiting the "AI Coding Assistants" page
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Normal

Dear committee members,

There has been significant discussion in the past year about LLM use
in the Linux kernel. One of the documents that have come out of this
is the "AI Coding Assistants" page in the documentation.[1] A LLM-assisted
patch series I submitted prompted a discussion about its content.[2]
Brauner writes:

    I remain very confused by our coding assistant contribution guidelines.
    I'm going to be a bit polemic now but this seriously in good faith.
    Why precisely do we require all this detailed information about what
    specific coding assistant was used?

This point is relatively minor, but the ensuing discussion unveiled some important
points of disagreement that I think would be useful to try to discuss at
the summit. A summary of some of the opinions and pain points:

- Should we keep the assisted-by tag? Jeff Layton proposed to get rid of them
  in a separate thread,[3] Greg KH and others, on the other hand, found them
  very useful in their workflow and opposed the idea.
- This discussion lay bare that the concern is about what signal to noise
  the tags bring, but what is really wanted (at least by some) is to know
  WHAT was done with the LLM, so that reviewers can use that information
  to scrutinize or de-prioritize. David Hildenbrand, for instance, suggested
  we could use: Assisted-by: LLM # automated removal of useless blabla.
  Is this a requirement we want?
- Are maintainers/reviewers allowed to de-prioritize patches of unknown or fairly new
  contributors that involve deep changes in core systems, where those changes
  "smell" like an LLM was heavily involved and the author did not understand
  what he submitted. (This point was brought up by Lorenzo Stoakes, among others.)
- Should we strengthen the wording of the current "AI Coding Assistants" page, to
  make clear that submitters must fully comprehend the code they submitted, and
  code assistants may only be used to "to perform the grunt work." ([4], from
  systemd)

To be clear, this discussion is not about doubting the technical merit of LLMs
or even about the ethical concerns in using them. And Linus has already made it
clear that the kernel will not adopt an anti-AI stance.

Still, as a mentor in the Linux Kernel Mentorship Program (led by Shuah Khan),
which accepts and supports people from all over the world, I do wish to express
my worry about how we can keep developing the kernel accessible to everyone.
And if I remember correctly, these concerns are shared by Khan and Corbet.
Tools are tools, but with the rising cost of LLM usage, we may create an uneven
playing field. However, this is a separate concern that may not be process-related
enough to be discussed at the summit.

Best wishes,
Jori.

[1]: https://docs.kernel.org/process/coding-assistants.html
[2]: https://lore.kernel.org/linux-fsdevel/20260703115852.GC3659451@killaraus.ideasonboard.com/T/#mcfa3addaee1383f62ae1341824cd37c45f9d45bf
[3]: https://lore.kernel.org/linux-fsdevel/20260702-aidoc-v1-1-735572dfb995@kernel.org/
[4]: https://lore.kernel.org/linux-fsdevel/20260702-bahnen-ertappen-verspannungen-0eaaf1e3f5af@brauner/
