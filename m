Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 05A0C85D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 12:39:38 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id C67CA1F9D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 12:39:36 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Mark Brown <broonie@kernel.org>
Date: Sun, 25 May 2014 14:56:37 +0200
Message-ID: <2064982.EuBE82TEQK@vostro.rjw.lan>
In-Reply-To: <20140524105328.GO22111@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <1638523.rqHsXd5Z1n@vostro.rjw.lan>
	<20140524105328.GO22111@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Saturday, May 24, 2014 11:53:28 AM Mark Brown wrote:
> 
> --6o5AAeie4QQ7Mfd3
> Content-Type: text/plain; charset=us-ascii
> Content-Disposition: inline
> 
> On Sat, May 24, 2014 at 01:15:56AM +0200, Rafael J. Wysocki wrote:
> > On Thursday, May 22, 2014 11:14:49 AM Mark Brown wrote:
> 
> > > > There are more weird cases still.  For example, we have the _DEP object in
> > > > ACPI that basically says "this device depends on that one" and there may be
> > > > no other relationship between the two whatsoever.  How are we supposed to
> > > > implement this within the existing frameworks?
> 
> > > That sounds like something that should be baked into however ACPI is
> > > hooked in already?
> 
> > No, it is not.  It is a relatively new addition to ACPI and we don't support
> > it today.  That's because it hasn't been present in the ACPI tables of any
> > production systems until recently.
> 
> > However, today we have systems with it shipping and we need to add support
> > for it.
> 
> Sorry, I wasn't clear - what I meant was that it should be something
> that can be handled based on information the ACPI implementation already
> has, I had been under the impression it got notification of all the
> basic PM transitions already?

It is called to do some low-level manipulations of device PM settings during
those transitions, but that may be after the driver's suspend callback has
run (like for PCI, for example).

Rafael
