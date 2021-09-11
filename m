Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C342407658
	for <lists+linux1394-devel@lfdr.de>; Sat, 11 Sep 2021 13:59:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mP1ew-0008Sm-7B; Sat, 11 Sep 2021 11:59:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1mP1eu-0008SV-PW
 for linux1394-devel@lists.sourceforge.net; Sat, 11 Sep 2021 11:59:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QOGCwA6rRjE1nxKn9mxm66bYPQ2pQ1bfZkTkrKtzCvw=; b=Y9tbgE8cOc1oNhlePZ5/pH0YC1
 7YUBWnF6mPAOVMhGCErVm2dNLLgZL9A4j2i0MWAY/Iz9TgW12xXvXwPYGHaaEAuIn4oGU5gGaWO9m
 s4BbVNYIidjh7hZ0cNE0xiMTbDEO07cujMsdwbhP+h0fpuvM4GnK07YSGJbh9iApbJ9g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QOGCwA6rRjE1nxKn9mxm66bYPQ2pQ1bfZkTkrKtzCvw=; b=d
 M9hBtr3VMlyPpFMYx1dyUQy+GayT2WQJImRoEezXI96Q2EX5IWmUSvgYxQtUk+kXqhStocyUHCPyj
 ZAoBiq//5QyzDyfe7LE7NMIafLTfzbPel+r6mBczAkzY/FBqLjJEpAUj0Z8gB7XV83Kh9ry4KpsSh
 qqu2Jc4VQsZRZ2pY=;
Received: from einhorn.in-berlin.de ([192.109.42.8]
 helo=einhorn-mail-out.in-berlin.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mP1eq-0077V0-8x
 for linux1394-devel@lists.sourceforge.net; Sat, 11 Sep 2021 11:59:00 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id 18BBge3X031428
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Sat, 11 Sep 2021 13:43:00 +0200
Date: Sat, 11 Sep 2021 13:42:36 +0200
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [git pull] FireWire (IEEE 1394) update post v5.14
Message-ID: <20210911134236.58da0be9@kant>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Linus,
 please pull from the tag "firewire-update" at
 git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git
 firewire-update 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [192.109.42.8 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.109.42.8 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arcgraph.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mP1eq-0077V0-8x
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4104730329464671298=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============4104730329464671298==
Content-Type: multipart/signed; boundary="Sig_/qIXG0B.=9T1GyME9K.JO/Ba";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/qIXG0B.=9T1GyME9K.JO/Ba
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Linus,

please pull from the tag "firewire-update" at

    git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git
    firewire-update

to receive the following FireWire (IEEE 1394) subsystem updates:

  - Migrate the bus snooper driver 'nosy' from PCI to DMA API.

  - Small janitorial cleanup in the IPv4/v6-over-1394 driver.

Christophe JAILLET (1):
      firewire: nosy: switch from 'pci_' to 'dma_' API

Pu Lehui (1):
      firewire: net: remove unused variable 'guid'

 drivers/firewire/net.c  |  4 ----
 drivers/firewire/nosy.c | 43 ++++++++++++++++++++++++-------------------
 2 files changed, 24 insertions(+), 23 deletions(-)

Thank you,
--=20
Stefan Richter
-=3D=3D=3D=3D=3D=3D--=3D-=3D =3D--=3D -=3D-=3D=3D
http://arcgraph.de/sr/

--Sig_/qIXG0B.=9T1GyME9K.JO/Ba
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElVwAmOXEbvmhUkgUefNvslRdedAFAmE8li0ACgkQefNvslRd
edBfqxAAgOhfHtfVPC44m/8hZHUqVeRNCwdFmsDd3teqbunXsrD3lagSgzLhysZD
b/KciVbe8vRDreNxtH3KaGTWOhMeGL7BcrKJhQPlizwW3NrQketEzkh6OXLfJmQw
bwT/+fPUFNrXEWKN0iPLEDwkN15JbRX1oQqsA/OK+gOToASNznjEG6cyUwZjz5Yo
n9QBa4pCtZd9WPzklvbYRbYHlhDxoaqyGVVu+2bVqfhtSCmhfHHweuAN+O4zXgMm
mgkdEACXhZITTPd/KTyOP53OyR6N+uugTAgdIDcorKET8oqOcjbP4WnqiVpgTwxj
2PSzqYsIisuYWEqQkWWvSE+V8YIGqkvuDbXJ7DP8GQnOnZMUXAdE6nDKArL51/BD
eer7uHF88kk7H66rkejrg0Q0oJS2F6ZsUjfxF4YdorILQ1+0HOJW0chfg0ZvvsNu
OakWaVfohqkICoLrbWBBZlUQDYg7iU6UqrZ1IAtZxb0Y7olN4VpCNRZZZ+5rHDMR
hwqjNf5wZHjl8L6N3fMFsopVETx62jRwV53Td4bS+RcincH/CDZM67Wf1Cx50NTA
+I7kouSI7nrEbIuFcbmVVxX2zx3YMvB9YVgdlJ30kBzf64ExuqIWo34jvizDx+y3
YeiTULOvTXRi0nFSTqzcubMn27pyB80YJctpROtFmNFXtzNCkTY=
=Ak0q
-----END PGP SIGNATURE-----

--Sig_/qIXG0B.=9T1GyME9K.JO/Ba--


--===============4104730329464671298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4104730329464671298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4104730329464671298==--

