Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD77380238
	for <lists+linux1394-devel@lfdr.de>; Fri, 14 May 2021 04:57:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lhO16-0003a3-Hg; Fri, 14 May 2021 02:57:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sfr@canb.auug.org.au>) id 1lhO15-0003Zm-1y
 for linux1394-devel@lists.sourceforge.net; Fri, 14 May 2021 02:57:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rC5BYPdCfo1r4yDQxbKyJJ5S56oqsOGn0PYfO3/x/Yk=; b=SXjHqYAsKqL/Q48DFtPRMJvmYP
 TurR1ZUGUlf9x3fgWQ0x0nZq0Bj4fuIv7tuRfysA8AoJJwEk5PYYzGS4ISZUd07WnlJD4rxlrefH+
 QXb58coVr5AYtjTXyALrNu7HoetG23UCXq/UoAT64XlLBXIZcf8yJ6FzcJDbbamET0l4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rC5BYPdCfo1r4yDQxbKyJJ5S56oqsOGn0PYfO3/x/Yk=; b=P
 TgmqBisjtjosjRELpQAdzDyYwE28CTZrhrDMOC9Q2IEbk20KoJ00UVMiTj6tDcSUmdVyWszciA5L2
 XtayYeJ/PHU4WRbdceZtTFP52NfDq+d4vkhruqZzxJG1y+f4aAgHhRcpD6p8pgznqMcYzUiViCUCv
 XV7/vZ0L4WpuekPU=;
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lhO0v-0003UK-RD
 for linux1394-devel@lists.sourceforge.net; Fri, 14 May 2021 02:57:30 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4FhCGt22r5z9sWk;
 Fri, 14 May 2021 12:32:22 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1620959548;
 bh=wEsq/gNmbpD/b6nmfvJT2+euaI0BOepkB7VQ3rFAxjY=;
 h=Date:From:To:Cc:Subject:From;
 b=aNmGsa8gdZrNqPlk9M3VhRD684BHuXsX6XJlh/+RUHhSc+VmhhgW9rjPp80Rigwps
 OLITBsFtQI0t9YbO6tjPSq6hWNAjesMtXzNmfdc5khHafU2MqJmjTdbF5a7YLeXW5V
 uiE1VyeINlrAYZ9DUahSUDviYW/ct2WUxTEHbP5QRXeTaWl4SI+BayGkRvnTiotYpb
 Yl8lBw4Na80cSql1KxqOULyyE5qcGekCJW93lnzrluOA8MsN269YEbnFN+l7dgaC0z
 p5dgZHk4wgT8C/OJ400o9jHOMRZK3AIzeEXJuRiTwA7dQ8FQB6AfeORhqUOY+ExLNU
 hLHKp7HZeHNzQ==
Date: Fri, 14 May 2021 12:32:21 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Linux Next  Mailing List <linux-next@vger.kernel.org>
Subject: linux-next: removed trees
Message-ID: <20210514123221.7c21393f@canb.auug.org.au>
MIME-Version: 1.0
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.7 LOCALPART_IN_SUBJECT   Local part of To: address appears in Subject
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lhO0v-0003UK-RD
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: Eduardo Valentin <edubezval@gmail.com>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Theodore Ts'o <tytso@mit.edu>,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>,
 Scott Wood <oss@buserror.net>, Zhang Rui <rui.zhang@intel.com>,
 1394 <linux1394-devel@lists.sourceforge.net>, Christoph Hellwig <hch@lst.de>
Content-Type: multipart/mixed; boundary="===============5951372310333581948=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============5951372310333581948==
Content-Type: multipart/signed; boundary="Sig_//ZBZsTOrBVa24j=4YJf1Ka2";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_//ZBZsTOrBVa24j=4YJf1Ka2
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

The following tree have been removed form linux-next because they have
not been updated in more than a year.  If you want a tree reinstated,
just let me know.

fbdev
fsl
generic-ioremap
ieee1394
  this contains the single commit
	67f8e65e4fc1 firewire: net: remove set but not used variable 'guid'
random
realtek
thermal-rzhang
thermal-soc
y2038
zx2c4

--=20
Cheers,
Stephen Rothwell

--Sig_//ZBZsTOrBVa24j=4YJf1Ka2
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmCd4TUACgkQAVBC80lX
0GwJsQf/TLLwsZGHoWiRtnRa6CuE4kbsToeqV8skczSRsZ5OJVlirrKahGw8liUX
YXrr1mdCFlfTwBIcVB+EXfQy+AKOToJzX6u987Sdrm0OylVW65eWIEiEkWDCnrk5
f2z1HyNQwfwGrXz5Eamq5+B78Kmxgmx5OyNfjf6JaWCGGJU7MdP8AhCt01FK4yGK
GoLhVbZkswLcI26FE0It1RoKpbm/iao9iXc24hwgw0UMh8GlMJPwQ6OT6tblSBTT
828gUu/h4EgbSabMBPLZRoIiSd2pDy0Nzn9QVMyDT68jsaWxSV1jSjoviOj2vOe1
zZ3JQZdWo6uVXVSleJzWWykGR3qaYg==
=xOi6
-----END PGP SIGNATURE-----

--Sig_//ZBZsTOrBVa24j=4YJf1Ka2--


--===============5951372310333581948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5951372310333581948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5951372310333581948==--

