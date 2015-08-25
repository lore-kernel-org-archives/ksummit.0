Return-Path: <shuahkh@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DAF76C21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 16:59:00 +0000 (UTC)
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3CB42E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 16:59:00 +0000 (UTC)
To: Mark Brown <broonie@kernel.org>, Shuah Khan <shuahkhan@gmail.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<CAKocOOP19WowbqaUBxESDd5Q5E4fPYpgPvKTqMn8JhTEhqJEAw@mail.gmail.com>
	<20150825163034.GB12878@sirena.org.uk>
From: Shuah Khan <shuahkh@osg.samsung.com>
Message-ID: <55DC9ECB.1090507@osg.samsung.com>
Date: Tue, 25 Aug 2015 10:58:51 -0600
MIME-Version: 1.0
In-Reply-To: <20150825163034.GB12878@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Emily Ratliff <eratliff@linuxfoundation.org>,
	Shuah Khan <shuahkh@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 08/25/2015 10:30 AM, Mark Brown wrote:
> On Tue, Aug 25, 2015 at 09:15:32AM -0600, Shuah Khan wrote:
>> On Mon, Aug 24, 2015 at 10:35 AM, Kees Cook
>> <keescook@chromium.org> wrote:
> 
>>> I agree with the sentiment here, but not with the language.
>>> Finding flaws (which is what selftests, KASan, Trinity, etc do)
>>> isn't hardening. Hardening is stopping the exploitation of
>>> flaws. The hardening the kernel needs is about taking away
>>> exploitation tools, not killing bugs. (Though killing bugs is
>>> still great.)
> 
>> I agree with Kees on this. Kselftest or any other test suites can
>> help with regression testing and make sure Kernel works the way
>> it should. Also these tests can tell us if kernel is hardened or
>> not.
> 
>> Hardening means something different to me. i.e making sure
>> kernel can protect against attacks and fail gracefully. This is
>> something to address during design and development process.
> 
> Testsuites can help here if we get into the habit of making sure
> they exercise error conditions; they're off to the side a bit but
> they can be a useful way of promoting good practice (at least in my
> experience).
> 

Yes. I agree. We can expand the Kselftest suite to do error checking,
maybe error injection. There are several tests now that are focused
on error checking and make sure syscalls fail correctly when used
incorrectly etc.

We could look into enhancing existing tests and add new tests as needed
to focus on finding kernel hardening related bugs and continue use them
for regression testing.

thanks,
- -- Shuah

- -- 
Shuah Khan
Sr. Linux Kernel Developer
Open Source Innovation Group
Samsung Research America (Silicon Valley)
shuahkh@osg.samsung.com | (970) 217-8978
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJV3J7LAAoJEAsCRMQNDUMcT1sQANiUpiZuYMjEtUFAkaxjEWGq
wI8xv69csf25ZClnOnjya3ALFksiIFbkdi7n4NWe6okKOgACpe5T0muVnSGbd6bz
ynw8zrBtCn0Kv9x+ee805wZ+VE5LtZe1bLqmhEIV0pDR+9wfn+BEmi2wsdeorW/R
tdE1REiyD9EThkfR6A15pVutD1lSPAxoPN1CfizO4VL/MSqa+/whU9V0Nrsj4CLl
MD9a4TP1TKgDdSFWWO6Gmdlh4cqXcJtXvGlnMxh3CZOuXolKMvye3Zgp9eyCp8HD
lHdJvbeON2z9lugFFfhF/iNvToHAuce3ArdlrlEcOJMDWBQ5ndUgGDBGYHNgWdGo
JoUKMJkI3g46ZsA7jfBJZ/G5wkH6k3b0Rwj+RPI2uPmu43TU80At3GwdiLq+aYGR
yp1p9ZuwrvtzL2sZOlPrj/uV1ZnIBj//fOuJWG0bJbsPYsnXe2vkZ4lQ/MsAe+sA
WKBYx8EO1YWCHbbsf37Vs1q8GRSUYuoOR2x7fUnvQlGO+QRfpb8ZcboMC7L0eC0C
plujBslA8E155TVUel9nreBK0WBWjynWOVlMf/GevCzWpiVirowlbKsOzttVHVCE
FczNYNd+CAzqxDfTrtzrjX3g5pEfjdmUgT4+6gwieG2AnilupV3yRvSW0e1Gqkii
R2LPXaZ0cMKJQ+2GYdD9
=kpAC
-----END PGP SIGNATURE-----
