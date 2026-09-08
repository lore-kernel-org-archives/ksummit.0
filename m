Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB92B52B1E0
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 14:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788878746; cv=none; b=DnDOkZOEUXzkriwZo2SDr9LIIpvnQpTD6VO/yxQablQh9fUub0NfPqx7LRIEnMhDCofQBse/7IODbJPovMvsmCuIQN1QPnSiIDhaW3p8fToSDOw/mIwtDwbwWEbgKiU0OwVSxzZBpshTjgk2kVodPvk6KKiNQOuARzY6ouWip7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788878746; c=relaxed/simple;
	bh=lEUA81rYB6OJs0+KuP6ir2soYzwZJYhAZ6qFQLX2gqM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CrRssm0LkSZLzKdkVcEUNa19yHsTSwBLZLC8Dl1Pq67ygNAG9HCtbFpcrT3Rwt/a+EwHhI03bImO4qFJUjec8ED1SkhZrw+7f2G0IxzaetiXT1d4q66inpOJzkrltWS3mP+dWAay9OEtz5FGabyJWZAj6a+2s7dn1rJKxz4Qf7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=m/bN2fca; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="m/bN2fca"
Received: from macsyma.thunk.org (pool-108-26-156-127.bstnma.fios.verizon.net [108.26.156.127])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 688EjTCL016046
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 8 Sep 2026 10:45:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1788878732; bh=k9AsqQzNYj5G55KzihNLyvG+caVXS+62cAcGrpFjxIk=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=m/bN2fcasl12gyOOnvch6O6MheawNHkGip0nGAlyh+16gxDeBUCRj9c25atfQ7SvJ
	 fWJe9VzX+kYnwMM0Qf5VdR4MuT3qjZ8Y6NrwF5firDRyEIebKLkuRcwuH+jD/LuMpT
	 OpLXB5fK2LzJJ1kz9AMHoSxGiXjvZTNB1m36kO0XEC1O8ZYCopzGDHMxQMEHs3W0K9
	 zXKHs1AoKL63LaTTYG71+HIWb173WVDupbkMndChKULaZktA0g1god/F42/HEmADbV
	 QEgM0C7UzTPXT2FAFVS0pmWVuTIBr3Ui8S99k9iOUqBU4Lcu593YorE6fq45Hp3Nb9
	 p70Op06QFPdjw==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 74D0D13DF418; Tue,  8 Sep 2026 10:44:29 -0400 (EDT)
Date: Tue, 8 Sep 2026 10:44:29 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Greg KH <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev,
        istoppa@nvidia.com
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
Message-ID: <aqAeUSS2TZkRUVao@mit.edu>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh>
 <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <2026090810-yen-tablet-8843@gregkh>
 <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
 <2026090825-scallop-pushcart-830c@gregkh>
 <CAH2bzCS_LHff_RLyYP2bKAmJOZEJNBJyBsZKnG6E=7JRDLjLng@mail.gmail.com>
 <CANiq72nep9_Cd7CcgrxNehN=-ZETZRjsQzJnSR9MV3B_R3khJg@mail.gmail.com>
 <CAH2bzCRTnb+A=HLhFzENBgFgsyjJ91sTLyOoxPgtFjhv+Gjcow@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH2bzCRTnb+A=HLhFzENBgFgsyjJ91sTLyOoxPgtFjhv+Gjcow@mail.gmail.com>

On Tue, Sep 08, 2026 at 04:52:13PM -0500, igor.stoppa@gmail.com wrote:
> Presently, if a new patch introduces either a vulnerability,
> or a regression in either functionality or performance,
> it gets rejected or at least it must be fixed accordingly.
> 
> We would need the safety-qualification criteria to be added to the list of
> properties measured and preserved across releases.

So perhaps you need to start with everything out-of-tree, and when
natural changes upstream changes, you can send patches upstream to
"fix" the issue, and we can see how annoyed everyone gets.

Your claim that it's not going to be draconian, but I think you need
to demonstrate whether or not this is actually the case.  Let's see
how much cooperation you will need from the various subsystems, and
whether it's going to involve a performance tax.  (And if there is a
performance tax, how bad is it going to be.)

Hint: if there needs to be a performance tax, it should only be paid
for those systems that care about the safety certification.  Maybe for
"safety certified" systems, people will be willing to pay a 20%
performance tax.  But everyone else.... probably not.

						- Ted
