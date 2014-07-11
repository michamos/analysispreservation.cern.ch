{#
## This file is part of Invenio.
## Copyright (C) 2014 CERN.
##
## Invenio is free software; you can redistribute it and/or
## modify it under the terms of the GNU General Public License as
## published by the Free Software Foundation; either version 2 of the
## License, or (at your option) any later version.
##
## Invenio is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with Invenio; if not, write to the Free Software Foundation, Inc.,
## 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.
#}

<div>

                <table>
<!--####################################################-->
                    <tr style="padding: 7px;">
                        <td> <h4> Physics Information </h4> </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> ESD Primary Data Set </td>
                        <td style="padding: 7px;">
                            {% for val in record.get('esd_primary_data_set_path') %}
                                {{ val }}
                                <br />
                            {% endfor %}
                        </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> MC Data Set </td>
                        <td style="padding: 7px;">
	                        {% for val in record.get('mc_data_set_path') %}
	                        	{{ val }}
	                        	<br />
	                        {% endfor %}
	                    </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Keywords </td>
                        <td style="padding: 7px;"> {{ record.get('mc_keywords')|join(', ') }}</td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Comments </td>
                        <td style="padding: 7px;"> {{ record.get('mc_comments') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td> <br /> </td>
                    </tr>
<!--####################################################-->
                    <tr style="padding: 7px;">
                        <td> <h4> AOD Production Step </h4> </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Operating System </td>
                        <td style="padding: 7px;"> {{ record.get('aod_os') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Software </td>
                        <td style="padding: 7px;">
	                        {{ record.get('aod_software.sw') }} - {{ record.get('aod_software.version') }}
	                    </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> User Code </td>
                        <td style="padding: 7px;">
	                        {{ record.get('aod_user_code.url') }} - {{ record.get('aod_user_code.tag') }}
                        </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Input Data Files </td>
                        <td style="padding: 7px;"> {{ record.get('aod_input_data_files') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Output Data Files </td>
                        <td style="padding: 7px;">
	                        {% for val in record.get('aod_output_data_files') %}
	                        	{{ val.url }}
	                        	<br />
	                        {% endfor %}
	                    </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> How to reproduce </td>
                        <td style="padding: 7px;"> {{ record.get('aod_reproduce') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Keywords </td>
                        <td style="padding: 7px;"> {{ record.get('aod_keywords')|join(', ') }}</td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td> <br /> </td>
                    </tr>
<!--####################################################-->
                    <tr style="padding: 7px;">
                        <td> <h4> Custom Analysis Step (mini-AOD) </h4> </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Operating System </td>
                        <td style="padding: 7px;"> {{ record.get('custom_os') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Software </td>
                        <td style="padding: 7px;">
	                        {{ record.get('custom_software.sw') }} - {{ record.get('custom_software.version') }}
	                    </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> User Code </td>
                        <td style="padding: 7px;">
	                        {{ record.get('custom_user_code.url') }} - {{ record.get('custom_user_code.tag') }}
                        </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Input Data Files </td>
                        <td style="padding: 7px;"> {{ record.get('custom_input_data_files') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Output Data Files </td>
                        <td style="padding: 7px;">
	                        {% for val in record.get('custom_output_data_files') %}
	                        	{{ val.url }}
	                        	<br />
	                        {% endfor %}
	                    </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> How to reproduce </td>
                        <td style="padding: 7px;"> {{ record.get('custom_reproduce') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Keywords </td>
                        <td style="padding: 7px;"> {{ record.get('custom_keywords')|join(', ') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td> <br /> </td>
                    </tr>
<!--####################################################-->
                    <tr style="padding: 7px;">
                        <td> <h4> End User Analysis </h4> </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Operating System </td>
                        <td style="padding: 7px;"> {{ record.get('end_os') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Software </td>
                        <td style="padding: 7px;">
	                        {{ record.get('end_software.sw') }} - {{ record.get('end_software.version') }}
	                    </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> User Code </td>
                        <td style="padding: 7px;">
	                        {{ record.get('end_user_code.url') }} - {{ record.get('end_user_code.tag') }}
                        </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Input Data Files </td>
                        <td style="padding: 7px;"> {{ record.get('end_input_data_files') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Output Data Files </td>
                        <td style="padding: 7px;">
	                        {% for val in record.get('end_output_data_files') %}
	                        	{{ val.url }}
	                        	<br />
	                        {% endfor %}
	                    </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> How to reproduce </td>
                        <td style="padding: 7px;"> {{ record.get('end_reproduce') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Keywords </td>
                        <td style="padding: 7px;"> {{ record.get('end_keywords')|join(', ') }}</td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td> <br /> </td>
                    </tr>
<!--####################################################-->
                    <tr style="padding: 7px;">
                        <td> <h4> Internal Documentation </h4> </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Internal Documents </td>
                        <td style="padding: 7px;">
	                        {% for val in record.get('internal_docs') %}
	                        	{{ val.doc }}
	                        	<br />
	                        {% endfor %}
	                    </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Keywords </td>
                        <td style="padding: 7px;"> {{ record.get('internal_docs_keywords')|join(', ') }}</td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Input Data Files </td>
                        <td style="padding: 7px;"> {{ record.get('internal_docs_comments') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td> <br /> </td>
                    </tr>
<!--####################################################-->
                    <tr style="padding: 7px;">
                        <td> <h4> Internal Duscussion </h4> </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Internal Documents </td>
                        <td style="padding: 7px;">
	                        {% for val in record.get('egroup') %}
	                        	{{ val.egroup }}
	                        	<br />
	                        {% endfor %}
	                    </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td> <br /> </td>
                    </tr>
<!--####################################################-->
                    <tr style="padding: 7px;">
                        <td> <h4> Presentation </h4> </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Internal Talks </td>
                        <td style="padding: 7px;">
	                        {% for val in record.get('internal_talks') %}
	                        	{{ val.talk }}
	                        	<br />
	                        {% endfor %}
	                    </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Public Talks </td>
                        <td style="padding: 7px;">
	                        {% for val in record.get('public_talks') %}
	                        	{{ val.talk }}
	                        	<br />
	                        {% endfor %}
	                    </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td> <br /> </td>
                    </tr>
<!--####################################################-->
                    <tr style="padding: 7px;">
                        <td><h4> Publication </h4></td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Journal Title </td>
                        <td style="padding: 7px;"> {{ record.get('journal_title') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Journal Year </td>
                        <td style="padding: 7px;"> {{ record.get('journal_year') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Journal Volume </td>
                        <td style="padding: 7px;"> {{ record.get('journal_volume') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> Journal Page </td>
                        <td style="padding: 7px;"> {{ record.get('journal_page') }} </td>
                    </tr>

                    <tr style="padding: 7px;">
                        <td style="padding: 7px; text-align: right; font-weight:bold;"> arXiv ID </td>
                        <td style="padding: 7px;"> {{ record.get('arxiv_id') }} </td>
                    </tr>

                </table>
</div>